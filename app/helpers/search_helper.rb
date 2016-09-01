module SearchHelper

	def get_length
		@length = @search[:game_length]
		if @length == "Short"
			return [0,44]
		elsif @length == "Medium"
			return [45,119]
		elsif @length == "Long"
			return [120,100000]
		else
			return [0,100000]
		end
	end

	# Not currently using get_weight or complexity
	def get_weight
		@weight = @search[:complexity]
		if @weight == "Light"
			return [0,2.00]
		elsif @weight == "Normal"
			return [2.01,2.99]
		elsif @weight == "Heavy"
			return [3.00,5.00]
		else
			return [0,5.00]
		end
	end

	def get_players
		@players = @search[:number_of_players].to_i
	end

	def get_ranking
		@ranking = @search[:min_bgg_rating].to_i
	end

	def get_array_ids
		
	end

	# Not currently working properly
	# def get_top
	# 	doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame")) do |id|
	# 		id.strict.nonet
	# 	end
	# end

end
