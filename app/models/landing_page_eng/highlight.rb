module LandingPageEng
	class Highlight < ActiveRecord::Base
		attr_accessible :body, :icon_image, :title, :landing_page_id
		belongs_to :landing_page 

		mount_uploader :icon_image, LandingPageEngHighlightIconImageUploader 
	end
end
