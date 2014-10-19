class Notification < ActiveRecord::Base
  belongs_to :scraper
  after_create :notify_user
    
  private
    def notify_user
      puts "notify: #{scraper.user.email}"
      Notifier.notify(scraper.user, self).deliver
    end
end
