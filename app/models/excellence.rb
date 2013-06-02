class Excellence < ActiveRecord::Base
  attr_accessible :description, :title

  validates_presence_of :title
end
