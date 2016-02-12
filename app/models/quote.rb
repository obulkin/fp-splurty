class Quote < ActiveRecord::Base
	validates(:saying, presence: true, length: {maximum: 300})
	validates(:author, presence: true, length: {maximum: 300})
end