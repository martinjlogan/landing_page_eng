module LandingPageEng
	class SlideShowSlide < ActiveRecord::Base
		belongs_to :landing_page 
		attr_accessible :image, :title, :tagline, :body, :call_to_action_url, :landing_page_id

		#validates :landing_page_id, :presence => true, :numericality => { :only_integer => true }
		validates :image, :presence => true

		mount_uploader :image, LandingPageEngSlideShowImageUploader
	end
end
