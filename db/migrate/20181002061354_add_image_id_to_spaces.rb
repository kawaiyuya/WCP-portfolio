class AddImageIdToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :image_id, :text
  end
end
