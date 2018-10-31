class RenameAddresColumToSpaces < ActiveRecord::Migration[5.2]
  def change
  	rename_column :spaces, :addres, :address
  end
end
