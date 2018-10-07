class RemoveFinishTimeFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :finish_time, :date_time
  end
end
