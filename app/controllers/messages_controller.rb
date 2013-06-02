class MessagesController < InheritedResources::Base
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      render "index"
    end
  end
end
