class ContactUsController < ApplicationController
  
  def index; end

  def create
  	EmailNotifier.send_contact_form(params[:contact]).deliver
  	redirect_to contact_us_url, notice: "Thank you for contacting us"
  end

end
