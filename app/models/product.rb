class Product < ApplicationRecord
  validates :destination, presence: true
  validates :flight_date, presence: true
  validates :departure_time, presence: true
  validates :departure_iata, presence: true
  validates :departure_iata, length: { is: 3 }
  validates :arrival_iata, presence: true
  validates :arrival_iata, length: { is: 3 }
  validates :price, presence: true
  validates :price, numericality: true
  has_one_attached :image
  has_many :order_items
  max_paginates_per 16
end
