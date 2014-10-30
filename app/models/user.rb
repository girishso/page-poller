class User < ActiveRecord::Base
  has_many :scrapers
  has_many :notifications, through: :scrapers
  has_many :logs, through: :scrapers
  
  after_create :create_default_scrapers

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

  def self.create_guest_user
    guest_id = "#{Time.now.to_i}#{rand(9)}"
    usr = User.new(name: "guest#{guest_id}",
                 email: "guest_#{guest_id}@example.com",
                )
    usr.guest = true
    usr.save!(validate: false)
    # session[:guest_user_id] = usr.id
    usr
  end
  
  def create_default_scrapers
    puts "in create_default_scrapers"
    scrapers.create!({
      name: "HN Top Story",
      url: "https://news.ycombinator.com/",
      target_element: "tr:nth-child(1) .title a",
      schedule: "every_1d",
      extract: "@href,text()"
      })

    scrapers.create!({
      name: "New xkcd comics",
      url: "http://xkcd.com/",
      target_element: "#comic img",
      schedule: "every_1d",
      extract: "@src,@title,@alt"
      })
  end

end
