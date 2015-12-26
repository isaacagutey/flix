class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.hstore :image_url, default: {:small_img => '', :large_img => ''}, null: false
      t.timestamps null: false
    end
  end
end
