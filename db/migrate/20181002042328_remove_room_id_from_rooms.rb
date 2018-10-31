class RemoveRoomIdFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :room_id, :integer
  end
end
