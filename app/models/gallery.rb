class Gallery < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  attr_accessible :description, :image

  validates_presence_of :image

end
