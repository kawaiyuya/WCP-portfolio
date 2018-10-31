class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :favorite_id
      t.integer :user_id
      t.integer :space_id
      t.integer :favorites_count

      t.timestamps
    end
  end
end
