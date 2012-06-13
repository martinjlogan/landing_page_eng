module LandingPageEng
	class SlideShowImage < ActiveRecord::Base
		belongs_to :landing_page 
		attr_accessible :image, :landing_page_id

		#validates :landing_page_id, :presence => true, :numericality => { :only_integer => true }
		validates :image, :presence => true

		mount_uploader :image, LandingPageEngSlideShowImageUploader

	end
end
