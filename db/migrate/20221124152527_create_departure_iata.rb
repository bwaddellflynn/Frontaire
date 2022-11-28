class CreateDepartureIata < ActiveRecord::Migration[7.0]
  def change
    create_table :departure_iata do |t|
      t.string :code
      t.string :location

      t.timestamps
    end
  end
end
