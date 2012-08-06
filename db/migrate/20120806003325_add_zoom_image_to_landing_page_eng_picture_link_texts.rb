class AddZoomImageToLandingPageEngPictureLinkTexts < ActiveRecord::Migration
  def change
    add_column :landing_page_eng_picture_link_texts, :zoom_image, :string
  end
end
