class DepartureIata < ApplicationRecord
  self.primary_key = :code
  validates :location, :presence => true
  validates :country, :presence => true
  validates :code, uniqueness:true
  validates :code, length: { is: 3 }
end
