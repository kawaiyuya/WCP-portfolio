class RemoveSpaceIdFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :space_id, :integer
  end
end
