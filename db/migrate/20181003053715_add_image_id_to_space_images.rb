class AddImageIdToSpaceImages < ActiveRecord::Migration[5.2]
  def change
    add_column :space_images, :image_id, :string
  end
end
