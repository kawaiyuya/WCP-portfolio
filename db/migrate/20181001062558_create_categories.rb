class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.integer :genre_id
      t.integer :space_id

      t.timestamps
    end
  end
end
