class Exelence < ActiveRecord::Base
  attr_accessible :description, :title, :image
  mount_uploader :image, GalleryUploader
end
