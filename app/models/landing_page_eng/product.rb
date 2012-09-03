require 'redcarpet'

module LandingPageEng
	class Product < ActiveRecord::Base
		attr_accessible :categories, :tags, :description, :details, :name, :picture_link_texts_attributes, 
			:prices_attributes, :target_affiliates_attributes, :slug, :brand

		has_many :prices
		has_many :picture_link_texts
		has_many :target_affiliates
		belongs_to :categories

		accepts_nested_attributes_for :picture_link_texts, allow_destroy: true
		accepts_nested_attributes_for :prices, allow_destroy: true
		accepts_nested_attributes_for :target_affiliates, allow_destroy: true

		validates :name,  presence: true, length: { maximum: 50 }
		validates :description, presence: true

		# Return the lowest known price for a given product or nil
		def price
			begin
				target_affiliates = self.target_affiliates
				target_affiliates[0].price
			rescue Exception => e
				nil
			end
		end

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
