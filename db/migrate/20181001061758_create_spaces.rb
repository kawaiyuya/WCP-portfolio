class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.integer :space_id
      t.string :name
      t.integer :price
      t.text :image
      t.string :description
      t.string :addres
      t.float :latitude
      t.float :longitude
      t.integer :capacity
      t.integer :lender_id

      t.timestamps
    end
  end
end
