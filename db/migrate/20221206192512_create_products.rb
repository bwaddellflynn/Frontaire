class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :destination
      t.datetime :flight_date
      t.datetime :departure_time
      t.string :departure_iata
      t.string :arrival_iata
      t.integer :price

      t.timestamps
    end
  end
end
