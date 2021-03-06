require 'redcarpet'

module LandingPageEng
	class LandingPage < ActiveRecord::Base
		attr_accessible :slug, :meta_description, :title, :meta_keywords, :body, :slide_show_slides_attributes, 
						:picture_link_texts_attributes, :call_to_action_url, :template

		has_many :slide_show_slides, :dependent => :destroy, :class_name => "LandingPageEng::SlideShowSlide"
		has_many :picture_link_texts, :dependent => :destroy, :class_name => "LandingPageEng::PictureLinkText"

		accepts_nested_attributes_for :slide_show_slides, allow_destroy: true
		accepts_nested_attributes_for :picture_link_texts, allow_destroy: true

		validates :meta_description, presence: true

		def body
			markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
			markdown.render(read_attribute(:body)).html_safe
		end
	end
end
