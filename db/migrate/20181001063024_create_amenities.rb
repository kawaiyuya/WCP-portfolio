class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.integer :amenitie_id
      t.integer :facility_id
      t.string :name

      t.timestamps
    end
  end
end
