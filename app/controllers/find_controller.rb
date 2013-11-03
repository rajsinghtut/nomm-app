class FindController < ApplicationController
	def find
		@posts = Post.all
	end
end
