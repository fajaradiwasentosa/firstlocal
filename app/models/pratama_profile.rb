class PratamaProfile < ActiveRecord::Base
  attr_accessible :about, :address, :email, :logo, :name, :phone

  mount_uploader :image, ImageUploader
  
end
