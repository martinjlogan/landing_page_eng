class CreateLandingPageEngHighlights < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_highlights do |t|
      t.string :icon_image
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
