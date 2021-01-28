class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :user_id, presence: true
  validates :pet_id, presence: true

  # def end_date_possible?
  #   :end_date > :start_date
  # end
end
