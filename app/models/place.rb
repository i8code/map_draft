class Place < ActiveRecord::Base

	#before you save this, do the geocode stuff
	before_save :geocode



def geocode
	# set loc to the user input address
	loc = Geokit::Geocoders::GoogleGeocoder3.geocode(
		self.address
		)

	#set lat lng values 
	self.lat = loc.lat
	self.lng = loc.lng
end


end
