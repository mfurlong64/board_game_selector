class SearchController < ApplicationController
	def index

	end

	def new

	end

	def create
		@search = params[:search]
		@doc = Nokogiri::XML(open("https://boardgamegeek.com/xmlapi2/collection?username="+@search[:bgg_username]+"&own=1")) 
		
		render :show
	end	


end
