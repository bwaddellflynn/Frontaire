json.extract! flight, :id, :ticket_id, :destination, :flight_date, :departure_time, :arrival_time, :departure_iata, :arrival_iata, :departure_icao, :arrival_icao, :price, :vaccancy, :created_at, :updated_at
json.url flight_url(flight, format: :json)
