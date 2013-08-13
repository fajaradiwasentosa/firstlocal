class TipTrick < ActiveRecord::Base
  attr_accessible :author, :description, :image, :title

  mount_uploader :image, ImageUploader

  paginates_per 1
end
