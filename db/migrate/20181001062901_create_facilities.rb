class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.integer :facility_id
      t.integer :space_id
      t.integer :amenitie_id

      t.timestamps
    end
  end
end
