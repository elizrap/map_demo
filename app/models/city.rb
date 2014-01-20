class City < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name, :population, :state
  acts_as_gmappable
end
