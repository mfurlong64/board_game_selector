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
		# Moving forward try making the API calls to the model
		# Controller should only move data back and forth from the M to V
		@doc_games = Nokogiri::XML(open("https://boardgamegeek.com/xmlapi2/thing?id="+@game_array.join(",")))

		render :show
	end	
	
end
