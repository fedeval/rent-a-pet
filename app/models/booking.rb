class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  validates :pet_id, presence: true
end
