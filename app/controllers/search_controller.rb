class SearchController < ApplicationController
	def index

	end

	def new

	end

	def create
		@search = params[:search]
		@doc = Nokogiri::XML(open("https://boardgamegeek.com/xmlapi2/collection?username="+@search[:bgg_username]+"&own=1"+"&stats=1")) 
		
		# apply_args(@doc)

		render :show
	end	

	 def get_spec_collection(docu)
	 	collection = []

	 	docu.css('item').map do |game, i|
	 		@playtime = game.css('stats').attr('playingtime')
	 		@min_players = game.css('stats').attr('minplayers')
			@max_players = game.css('stats').attr('maxplayers')
			if @max_players == nil then @max_players = @minplayers end

			@playtime = @playtime.to_s.to_i
			@min_players = @min_players.to_s.to_i
			@max_players = @max_players.to_s.to_i

	 		if @playtime >= get_length[0] && @playtime <= get_length[1]
	 			if get_players != 0 && @min_players <= get_players && @max_players >= get_players
	 				collection << game 
	 			end
	 		end
	 	end

	 	return collection
	 end

end
