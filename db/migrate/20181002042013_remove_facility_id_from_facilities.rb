class RemoveFacilityIdFromFacilities < ActiveRecord::Migration[5.2]
  def change
    remove_column :facilities, :facility_id, :integer
  end
end
