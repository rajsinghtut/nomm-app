class FindController < ApplicationController

	def distance(post,lat_1,lon_1)
			p_lat=post.latitude
			p_lon=post.longitude
			distance = Geocoder::Calculations.distance_between([lat_1,lon_1],[p_lat,p_lon])
	end

	def calculate_distance(posts,lat_1,lon_1)
		x=0
		posts.each do |p|
			@distance = []
			@distance[x] = distance(p,lat_1,lon_1)
			x += 1
		end
		return @distance
	end

	def find
		@latitude = params[:lat]
		@longitude = params[:lon]
		#@results = Geocoder.search("@latitude, @longitude")
		all_posts = Post.all
		@sorted_posts = all_posts.sort_by(&:created_at)
		#@sorted_posts = Post.find :all, :order => "created_at DESC"
		@current_distance=calculate_distance(@sorted_posts,@latitude,@longitude)

	end

end
