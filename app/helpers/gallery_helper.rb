module GalleryHelper

  def cover_album(album)
  	album.photos.blank? ? "mosaic.jpg" : album.photos.sample.image.url
  end

end
