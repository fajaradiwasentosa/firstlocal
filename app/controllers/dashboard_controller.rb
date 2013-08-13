class DashboardController < ApplicationController
  def index
  	@tips_triks = TipTrick.order(:created_at).page params[:page]
  end
end
