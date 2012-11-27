class School < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :name, :state, :zip
end
