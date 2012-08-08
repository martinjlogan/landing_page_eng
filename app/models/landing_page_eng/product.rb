module LandingPageEng
	class Product < ActiveRecord::Base
		attr_accessible :brand, :category_id, :description, :details, :name

		has_many :prices
		has_many :picture_link_texts
		belongs_to :categories

		accepts_nested_attributes_for :picture_link_texts, allow_destroy: true
		accepts_nested_attributes_for :prices, allow_destroy: true

		validates :name,  presence: true, length: { maximum: 50 }
		validates :description, presence: true
	end
end
