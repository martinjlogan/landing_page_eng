class CreateLandingPageEngSlideShowSlides < ActiveRecord::Migration
  def change
    create_table :landing_page_eng_slide_show_slides do |t|
      t.integer :landing_page_id
      t.string :image
      t.string :title
      t.text :tagline
      t.text :body
      t.string :call_to_action_url

      t.timestamps
    end
  end
end
