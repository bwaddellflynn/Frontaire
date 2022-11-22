class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights, :id => false do |t|
      t.primary_key :ticket_id
      t.string :destination
      t.datetime :flight_date
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :departure_iata
      t.string :arrival_iata
      t.string :departure_icao
      t.string :arrival_icao
      t.float :price
      t.boolean :vaccancy

      t.timestamps
    end
  end
end
