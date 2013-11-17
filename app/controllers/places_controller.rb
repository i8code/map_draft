class PlacesController < ApplicationController

	def index
		#loads entirety of database
		#@places = place.all

		#loads most recent place, always pull the last row in the table
		@place = Place.last

	end

		def new
			#@place = Place.last
			@place = Place.new

		end 

		def create
			#Pleace.create( :title => 'omg', ...)
			@place = Place.create( place_params )
			#rakes route 
			redirect_to root_path
		end

	private 

	def place_params
	# permit the user to upload these things into your site 
	params.require(:place).permit(:title, :address)
	end 

end
