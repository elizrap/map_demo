class CitiesController < ApplicationController
  def index
    @cities = City.all
    @json = @cities.to_gmaps4rails
  end
end
