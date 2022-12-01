class Flight < ApplicationRecord
  validates :desination, presence: true
  validates :flight_date, presence: true
  validates :departure_time, presence: true
  validates :arrival_time, presence: true
  validates :departure_iata, presence: true
  validates :departure_iata, length: { is: 3 }
  validates :arrival_iata, presence: true
  validates :arrival_iata, length: { is: 3 }
  validates :price, presence: true
  validates :price, numericality: true
  validates :vaccancy, inclusion: [true, false]
  has_one_attached :image
  max_paginates_per 16
end
