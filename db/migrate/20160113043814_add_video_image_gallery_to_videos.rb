class AddVideoImageGalleryToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :image_gallery, :text, array: true, default: []
  end
end
