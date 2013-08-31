class EmailNotifier < ActionMailer::Base

  def send_contact_form(data)
    @data = data
    @data[:email] = "notificationpratamap@gmail.com" if @data[:email].blank?
    mail to: "admin@pratamapolykem.com", from: @data[:email], subject: "Message from contact us form"
  end

end
