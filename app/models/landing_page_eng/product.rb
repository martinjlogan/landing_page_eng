module LandingPageEng
	class Product < ActiveRecord::Base
		attr_accessible :brand, :category_id, :description, :details, :name, :picture_link_texts_attributes, :prices_attributes

		has_many :prices
		has_many :picture_link_texts
		belongs_to :categories

		accepts_nested_attributes_for :picture_link_texts, allow_destroy: true
		accepts_nested_attributes_for :prices, allow_destroy: true

		validates :name,  presence: true, length: { maximum: 50 }
		validates :description, presence: true

		def description
			markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
			markdown.render(read_attribute(:description)).html_safe
		end

		def details
			markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
			markdown.render(read_attribute(:details)).html_safe
		end	
	end
end
