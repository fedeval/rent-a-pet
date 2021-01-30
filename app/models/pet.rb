class Pet < ApplicationRecord
  SPECIES = %w[cat dog monkey lizard snake koala].freeze

  belongs_to :user

  has_many :bookings
  has_one_attached :photo

  validates :user_id, presence: true
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :age, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :available, presence: true
end
