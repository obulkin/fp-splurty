class QuotesController < ApplicationController
	def index
		random_offset = rand(Quote.count)
		@quote = Quote.offset(random_offset).first
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params())
		unless(@quote.save)
			flash[:error] = "Your submission <strong>could not</strong> be saved because the data you entered is invalid. Both fields should be completed, and the maximum length for each is 300 characters.".html_safe
		end
		redirect_to(root_path())
	end

	private
	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end