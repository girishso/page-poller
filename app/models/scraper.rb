class Scraper < ActiveRecord::Base
  belongs_to :user
  has_many :logs
  has_many :notifications

  SCHEDULES = %w[every_1m every_2m every_5m every_10m every_30m every_1h every_2h every_5h every_12h every_1d every_2d every_7d
                 midnight 1am 2am 3am 4am 5am 6am 7am 8am 9am 10am 11am noon 1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 10pm 11pm never]

  EVENT_RETENTION_SCHEDULES = [["Forever", 0], ["1 day", 1], *([2, 3, 4, 5, 7, 14, 21, 30, 45, 90, 180, 365].map {|n| ["#{n} days", n] })]

  before_save :set_next_run_time
  scope :pending_jobs, -> { where("next_run_time < ?", Time.zone.now) }

  def self.execute_jobs
    Scraper.pending_jobs.each do |scraper|
      begin
        scraper.check
      rescue StandardError => ex
        log ex.message
      end

      scraper.set_next_run_time
      scraper.save
    end
  end

  def check
    log "running scraper #{name}"
    faraday = Faraday.new(:url => url)
    response = faraday.get(url)
    raise "Failed: #{response.inspect}" unless response.success?
    body = response.body
    doc = Nokogiri::HTML(body)

  end

  private
    def extract_xml(doc)
      extract_each(doc) { |extraction_details|
        case
        when css = extraction_details['css']
          nodes = doc.css(css)
        when xpath = extraction_details['xpath']
          doc.remove_namespaces! # ignore xmlns, useful when parsing atom feeds
          nodes = doc.xpath(xpath)
        else
          raise '"css" or "xpath" is required for HTML or XML extraction'
        end
        case nodes
        when Nokogiri::XML::NodeSet
          result = nodes.map { |node|
            case value = node.xpath(extraction_details['value'])
            when Float
              # Node#xpath() returns any numeric value as float;
              # convert it to integer as appropriate.
              value = value.to_i if value.to_i == value
            end
            value.to_s
          }
        else
          raise "The result of HTML/XML extraction was not a NodeSet"
        end
        log "Extracting #{extraction_type} at #{xpath || css}: #{result}"
        result
      }
    end

    def extract_each(doc, &block)
      interpolated['extract'].each_with_object({}) { |(name, extraction_details), output|
        output[name] = block.call(extraction_details)
      }
    end

    def faraday
      @faraday ||= Faraday.new { |builder|
        builder.headers[:user_agent] = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; tr-TR) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27'

        builder.use FaradayMiddleware::FollowRedirects
        builder.request :url_encoded
      }
    end

    def log(message)
      logs.create(message: message)
    end

    def set_next_run_time
      self.next_run_time = case schedule
      when /never/
        puts "never"
        nil
      when /every_(\d+)(m|h|d)/
        puts "matches every #{$1} #{$2}"
        case $2
        when 'm'
          Time.now + $1.to_i.minutes
        when 'h'
          Time.now + $1.to_i.hours
        when 'd'
          Time.now + $1.to_i.days
        end
      when /midnight/
        puts "00:00"
        Chronic.parse("today midnight")
      when /noon/
        puts "12:00"
        if Time.now.noon < Time.now # already past noon
          (Time.now + 1.day).noon
        else
          Time.now.noon
        end
      when /(am|pm)/
        puts $1
        today = Chronic.parse("today at " + schedule)
        (today <= Time.now) ? Chronic.parse("tomorrow at " + schedule) : today
      end

    end


end
