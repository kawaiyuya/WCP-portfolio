class CreateSpaceImages < ActiveRecord::Migration[5.2]
  def change
    create_table :space_images do |t|
      t.integer :space_id
      t.text :image

      t.timestamps
    end
  end
end
