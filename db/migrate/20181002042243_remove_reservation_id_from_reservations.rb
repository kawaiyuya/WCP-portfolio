class RemoveReservationIdFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :reservation_id, :integer
  end
end
