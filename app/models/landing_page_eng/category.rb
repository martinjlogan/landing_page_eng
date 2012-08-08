module LandingPageEng
	class Category < ActiveRecord::Base
		has_many :products;

		validates :category, presence: true
	end
end