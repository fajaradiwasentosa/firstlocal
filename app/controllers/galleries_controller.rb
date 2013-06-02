class GalleriesController < InheritedResources::Base
  def index
    @galleries = Gallery.page(7).per(50)
  end
end
