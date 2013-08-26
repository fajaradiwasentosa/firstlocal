class Carrier < ActiveRecord::Base
  attr_accessible :basic_carrier, :expired_date, :requirement, :title
end
