class SlotBookMailer < ActionMailer::Base
    layout false
  	def slot_book(slot_booking)
  	  @slot_booking = slot_booking
      mail(to: @slot_booking.try(:email), from: "from@example.com", subject: "Advertise Slot #{@slot_booking.id} has been booked .")
  	end
end