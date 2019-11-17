class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :slot_booking
  validates :start_time, :uniqueness => {:scope => :created_date}
  validates :end_time, :uniqueness => {:scope => :created_date}
end
