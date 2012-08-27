class CreateLandingPageEngTargetAffiliates < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_target_affiliates do |t|
      t.integer :product_id
      t.string :name
      t.string :url
      t.float :price

      t.timestamps
    end
  end
end
