json.extract! slot_booking, :id, :name, :user_id, :slot_id, :email, :mobile, :active, :created_at, :updated_at
json.url slot_booking_url(slot_booking, format: :json)
