class CreateSlotBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :slot_bookings do |t|
      t.string :name
      t.integer :user_id
      t.integer :slot_id
      t.string :email
      t.string :mobile
      t.boolean :active

      t.timestamps
    end
  end
end
