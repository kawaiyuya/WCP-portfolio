class RemoveAmenitieIdFromAmenities < ActiveRecord::Migration[5.2]
  def change
    remove_column :amenities, :amenitie_id, :integer
  end
end
