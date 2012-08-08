class CreateLandingPageEngCategories < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
