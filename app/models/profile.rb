class Profile < ActiveRecord::Base
  attr_accessible :address, :city, :description, :email, :logo, :name, :phone, :zipcode
end
