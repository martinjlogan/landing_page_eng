module LandingPageEng
	class LandingPage < ActiveRecord::Base
		#attr_accessible :title, :tagline, :slide_show_images
		attr_protected
		has_many :slide_show_slides, :dependent => :destroy, :class_name => "LandingPageEng::SlideShowSlide"

		accepts_nested_attributes_for :slide_show_slides, allow_destroy: true

	end
end
