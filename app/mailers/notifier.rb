class Notifier < ActionMailer::Base
  layout 'email'
  default from: "hello@pagepoller.herokuapp.com"
  
  def notify(user, notification)
    @user = user
    @notification = notification
    @output = JSON::parse(notification.output)

    mail(to: @user.email, subject: 'You have a notification!')
  end
end
