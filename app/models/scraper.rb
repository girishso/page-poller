class Scraper < ActiveRecord::Base
  belongs_to :user

  SCHEDULES = %w[every_1m every_2m every_5m every_10m every_30m every_1h every_2h every_5h every_12h every_1d every_2d every_7d
                 midnight 1am 2am 3am 4am 5am 6am 7am 8am 9am 10am 11am noon 1pm 2pm 3pm 4pm 5pm 6pm 7pm 8pm 9pm 10pm 11pm never]

  EVENT_RETENTION_SCHEDULES = [["Forever", 0], ["1 day", 1], *([2, 3, 4, 5, 7, 14, 21, 30, 45, 90, 180, 365].map {|n| ["#{n} days", n] })]

  before_save :set_next_run_time

  def self.execute_jobs

  end

  def set_next_run_time(schedule)
    case schedule
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
      Time.now.midnight
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
