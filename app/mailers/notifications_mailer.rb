class NotificationsMailer < ActionMailer::Base
  default :from => "admin@lvh.me"
  default :to => "admin@lvh.me"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end
end
