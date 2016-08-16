class SearchController < ApplicationController
	def create
		p params
		@username = params[search][bgg_username]
		@player_count =  params[search][number_of_players]
		@length =  params[search][game_length]
		@wieght =  params[search][complexity]

		@all_user_games = 
	end	
end
