class QuotesController < ApplicationController
	def index
		random_offset = rand(Quote.count)
		@quote = Quote.offset(random_offset).first
	end
end