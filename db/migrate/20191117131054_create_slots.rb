class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.integer :start_time
      t.integer :end_time
      t.datetime :created_date
      t.integer :user_id
      t.boolean :active

      t.timestamps
    end
  end
end
