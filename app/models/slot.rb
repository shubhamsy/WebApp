class Slot < ApplicationRecord
  belongs_to :user
  validates :start_time, :uniqueness => {:scope => :created_date}
  validates :end_time, :uniqueness => {:scope => :created_date}

end
