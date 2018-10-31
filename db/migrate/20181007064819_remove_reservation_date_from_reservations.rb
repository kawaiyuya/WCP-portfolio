class RemoveReservationDateFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :reservation_date, :date_time
  end
end
