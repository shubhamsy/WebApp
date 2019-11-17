class AddSlotBookingIdToSlots < ActiveRecord::Migration[6.0]
  def change
    add_column :slots, :slot_booking_id, :integer
  end
end
