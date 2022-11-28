class Flight < ApplicationRecord
  has_one :arrival_iata
  has_one :departure_iata
end
