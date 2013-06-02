class ProfilesController < InheritedResources::Base
  def index
    @profile = Profile.where(id: 1).first
    @promotions = Promotion.order("created_at DESC")
    @galleries = Gallery.order("created_at DESC")
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
