json.extract! product, :id, :destination, :flight_date, :departure_time, :departure_iata, :arrival_iata, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
