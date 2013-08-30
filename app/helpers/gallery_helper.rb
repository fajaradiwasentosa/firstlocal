module GalleryHelper

  def cover_album(album)
    album.photos.sample.image.url
  end

end
