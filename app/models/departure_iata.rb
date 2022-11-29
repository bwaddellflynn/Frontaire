class DepartureIata < ApplicationRecord
  self.primary_key = :code
  has_many :flight
  validates :location, :presence => true
  validates :code, uniqueness:true
end
