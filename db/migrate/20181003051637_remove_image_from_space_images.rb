class RemoveImageFromSpaceImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :space_images, :image, :text
  end
end
