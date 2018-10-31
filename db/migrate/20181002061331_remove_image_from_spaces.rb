class RemoveImageFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :image, :text
  end
end
