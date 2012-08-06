class AddZoomImageToPictureLinkTexts < ActiveRecord::Migration
  def change
    add_column :picture_link_texts, :zoom_image, :string
  end
end
