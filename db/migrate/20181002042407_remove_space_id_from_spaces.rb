class RemoveSpaceIdFromSpaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :spaces, :space_id, :integer
  end
end
