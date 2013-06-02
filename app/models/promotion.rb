class Promotion < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  attr_accessible :description, :image, :title

  validates_presence_of :title
end
