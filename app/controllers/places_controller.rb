class PlacesController < ApplicationController

	def index
		#loads entirety of database
		#@places = place.all

		#loads most recent place, always pull the last row in the table
		@place = Place.last

	end

end
