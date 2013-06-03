class GalleriesController < InheritedResources::Base
  def index
    @galleries = Gallery.order("created_at DESC").page params[:page]
  end
end
