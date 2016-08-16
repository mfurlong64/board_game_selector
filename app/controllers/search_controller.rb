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

	# def apply_args(docu)
	# 	collection = {}
	# 	@doc.css('item').each_with_index do |game, i|

	# 		collection[i] = []
	# 		if 
	# 			collection[i] << game.at('name').text
			
	# 	end

	# end

end
