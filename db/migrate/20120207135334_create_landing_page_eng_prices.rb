class CreateLandingPageEngPrices < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_prices do |t|
      t.integer :product_id
      t.float :price

      t.timestamps
    end
  end
end
