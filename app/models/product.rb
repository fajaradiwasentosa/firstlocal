class Product < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  attr_accessible :block_per_vallet, :brick_wall, :description, :height, :image, :long, :name, :volume, :weight_per_vallet, :width

end
