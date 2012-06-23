class CreateLandingPageEngPictureLinkTexts < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_picture_link_texts do |t|
      t.string :image
      t.string :title
      t.text :body
      t.string :link
      t.integer :landing_page_id

      t.timestamps
    end
  end
end
