class Photo < ActiveRecord::Base
	self.table_name = "galleries"
  attr_accessible :description, :image, :title, :album_id
  mount_uploader :image, GalleryUploader
  belongs_to :album
end
