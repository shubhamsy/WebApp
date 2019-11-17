class AddSlotBookingIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :slot_booking_id, :integer
  end
end
