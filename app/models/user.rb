class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :user_role       
  belongs_to :slot_booking
  has_many :slots, foreign_key: :user_id, class_name: "Slot"
end
