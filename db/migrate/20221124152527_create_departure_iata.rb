class CreateDepartureIata < ActiveRecord::Migration[7.0]
  def change
    create_table :departure_iata,:id => false do |t|
      t.string :code
      t.string :location
      t.string :country

      t.timestamps
    end
  end
end
