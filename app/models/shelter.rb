class Shelter < ActiveRecord::Base
  attr_accessible :name, :address, :tel, :lat, :lng, :capacity, :type, :floorage, :day
end
