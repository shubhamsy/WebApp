class SlotBooking < ApplicationRecord

    has_many :users, foreign_key: :slot_booking_id, class_name: "User"
    
    after_create :send_email    
    after_create :updateslot
   
    def send_email
    	SlotBookMailer.slot_book(self).deliver
    end

    def updateslot

       SlotBooking.all.each do |slot|
         slot = Slot.find_by(id: slot.id)  
         if slot.present?
           slot.update(active: false)
         end
       end
    end

end
