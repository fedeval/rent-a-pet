class Pet < ApplicationRecord
  pg_search_scope :search_by_species,
  against: [ :species],
  using: {
    tsearch: { prefix: true } 
  }

  SPECIES = %w[Cat Dog Monkey Lizard Snake Koala Turtle Fish Hamster Rabbit Fox].freeze

  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :user_id, presence: true
  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :age, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :available, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
