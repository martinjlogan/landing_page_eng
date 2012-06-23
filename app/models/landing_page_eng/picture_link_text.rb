module LandingPageEng
  class PictureLinkText < ActiveRecord::Base
	belongs_to :landing_page
    attr_accessible :body, :image, :landing_page_id, :link, :title
	validates :body, :presence => true

	mount_uploader :image, LandingPageEngPictureLinkTextImageUploader 
  end
end
