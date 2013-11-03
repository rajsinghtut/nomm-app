class FindController < ApplicationController
	def find
		@latitude = params[:lat]
		@longitude = params[:lon]
		@posts = Post.all(:conditions => ["latitude != ? AND longitude != ?", @latitude, @longitude])

	end
end
