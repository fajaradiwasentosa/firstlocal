class ApplicationController < ActionController::Base
  protect_from_forgery

  def profile
  	@profile = PratamaProfile.first
  end
end
