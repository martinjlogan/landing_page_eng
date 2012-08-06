module LandingPageEng
  class PictureLinkText < ActiveRecord::Base
	belongs_to :landing_page
    attr_accessible :body, :image, :zoom_image, :landing_page_id, :link, :title, :tags

	mount_uploader :image, LandingPageEngPictureLinkTextImageUploader 
	mount_uploader :zoom_image, LandingPageEngPictureLinkTextZoomImageUploader 

	def body
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
		markdown.render(read_attribute(:body)).html_safe
	end
  end
end
