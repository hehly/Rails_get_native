class VideosController < ApplicationController

	def index
		@user = User.find(1)
	end

end
