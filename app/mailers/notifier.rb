class Notifier < ActionMailer::Base
  layout 'email'
  default from: "hello@pagepoller.herokuapp.com"

  def notify(user, notification)
    @user = user
    @notification = notification
    @output = JSON::parse(notification.output)
    scraper = notification.scraper

    byebug
    subject = scraper.subject.present? ? "#{@output[scraper.subject]&.map(&:strip)&.join('-')} - #{scraper.name}" : scraper.name

    mail(to: @user.email, subject: subject)
  end
end
