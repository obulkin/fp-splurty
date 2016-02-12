class QuotesController < ApplicationController
	def index
		random_offset = rand(Quote.count)
		@quote = Quote.offset(random_offset).first
	end

	def new
		@quote = Quote.new
	end

	def create
		Quote.create(quote_params())
		redirect_to(root_path())
	end

	private
	def quote_params
		params.require(:quote).permit(:quote, :author)
	end
end