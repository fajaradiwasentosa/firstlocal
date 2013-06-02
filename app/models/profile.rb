class Profile < ActiveRecord::Base
  mount_uploader :logo, ImageUploader

  attr_accessible :address, :city, :description, :email, :logo, :name, :phone, :zipcode, :location_description

  validates_presence_of :address, :city, :description, :email, :logo, :name, :phone, :zipcode

end
