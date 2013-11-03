class FindController < ApplicationController

	def distance(posts,lat_1,lon_1)
		posts.each do |p|
			@distance = Geocoder::Calculations.distance_between([lat_1,lon_1],[p.latitude,p.longitude])
		end
	end

	def find
		@latitude = params[:lat]
		@longitude = params[:lon]
		@results = Geocoder.search("@latitude, @longitude")
		@posts = Post.all
		distance = distance(@posts,@latitude,@longitude)
	end

end
