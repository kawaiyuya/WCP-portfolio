class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :reservation_id
      t.integer :space_id
      t.integer :user_id
      t.date :reservation_date
      t.time :start_time
      t.time :finish_time
      t.integer :total_price

      t.timestamps
    end
  end
end
