class DepartureIata < ApplicationRecord
  self.primary_key = :code
  validates :location, :presence => true
  validates :code, uniqueness:true
end
