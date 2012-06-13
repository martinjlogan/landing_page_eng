class CreateLandingPageEngSlideShowImages < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_slide_show_images do |t|
      t.integer :landing_page_id
      t.string :image

      t.timestamps
    end
  end
end
