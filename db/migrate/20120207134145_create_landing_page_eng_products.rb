class CreateLandingPageEngProducts < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_products do |t|
      t.string :department
      t.text :categories
      t.text :tags
      t.string :name
      t.string :brand
      t.text :description
      t.text :details, default: ""

      t.timestamps
    end
  end
end
