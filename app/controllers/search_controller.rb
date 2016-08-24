class SearchController < ApplicationController
	def index

	end

	def new

	end

	def create
		@search = params[:search]
		@doc = Nokogiri::XML(open("https://boardgamegeek.com/xmlapi2/collection?username="+@search[:bgg_username]+"&own=1"+"&stats=1")) 
		@game_array = []

		@doc.css('item').each do |game|
			@game_array << game.attr('objectid')
		end
		
		@doc_games = Nokogiri::XML(open("https://boardgamegeek.com/xmlapi2/thing?id="+@game_array.join(",")))

		render :show
	end	
	
end
