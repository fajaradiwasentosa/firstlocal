class PromotionsController < InheritedResources::Base
  def index
    @promotions = Promotion.order("created_at DESC").page params[:page]
  end
end
