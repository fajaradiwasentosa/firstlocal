class DashboardController < InheritedResources::Base
  def index
    @galleries = Gallery.order("created_at DESC")
    @products = Product.order("created_at DESC")
    @tips_and_tricks = Trick.order("created_at DESC")
    @promotions = Promotion.order("created_at DESC")
    @messages = Message.order("created_at DESC")
    @profile = Profile.where(id: 1).first
  end

end
