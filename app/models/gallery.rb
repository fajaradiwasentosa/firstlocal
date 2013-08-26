class Gallery < ActiveRecord::Base
  attr_accessible :description, :image, :title
  mount_uploader :image, GalleryUploader
end
