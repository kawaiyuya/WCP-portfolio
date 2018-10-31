class AddFinishTimeToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :finish_time, :datetime
  end
end
