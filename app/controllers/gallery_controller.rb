class GalleryController < ApplicationController
  def index
  	@albums = Album.all
  	@exelences = Exelence.all
  end

  def show_album
  end
end
