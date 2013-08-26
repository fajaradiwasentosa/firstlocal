class DashboardController < ApplicationController
  def index
  	@tips_triks = TipTrick.order(:created_at)
  end
end
