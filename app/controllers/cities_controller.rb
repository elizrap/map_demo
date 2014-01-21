class CitiesController < ApplicationController

  def index
    @cities = City.all
    @json = @cities.to_gmaps4rails do |city, marker|
      marker.infowindow render_to_string(:partial => "/cities/infowindow", :locals => { :cat => city})
      marker.title "#{city.name}"
      marker.json({ :population => city.population})
      marker.picture({
                            :picture => "http://forum.placeboworld.co.uk/forum/images/smilies/Black_Cat_by_angelwolf2002.gif",
                            :width => 32,
                            :height => 32})

    end
  end




end



