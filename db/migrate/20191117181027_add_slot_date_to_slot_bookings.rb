class AddSlotDateToSlotBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :slot_bookings, :slot_date, :datetime
  end
end
