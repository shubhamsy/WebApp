class SlotBooking < ApplicationRecord
    has_many :slots, foreign_key: :slot_booking_id, class_name: "SlotBooking"
    has_many :users, foreign_key: :slot_booking_id, class_name: "User"
    
    after_create :send_email

    def send_email
    	SlotBookMailer.slot_book(self).deliver
    end

end
