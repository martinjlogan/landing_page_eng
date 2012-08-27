module LandingPageEng
  class TargetAffiliate < ActiveRecord::Base
    attr_accessible :product_id, :name, :price, :url
  end
end
