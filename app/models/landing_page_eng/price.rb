module LandingPageEng
	class Price < ActiveRecord::Base
		belongs_to :product
	end
end