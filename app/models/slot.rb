class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :slot_booking
end
