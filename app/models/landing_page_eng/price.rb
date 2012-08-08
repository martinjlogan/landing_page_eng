module LandingPageEng
  class Price < ActiveRecord::Base
    belongs_to :product

    validates :price, presence: true

  end
end