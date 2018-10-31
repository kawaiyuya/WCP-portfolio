class RemoveImageToSpaces < ActiveRecord::Migration[5.2]
  def change
  	def up
    remove_column :spaces, :image
      end

  def down
    add_column :spaces, :image, :string
  end
  end
end
