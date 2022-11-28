class RemoveIcao < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure_icao
    remove_column :flights, :arrival_icao
  end
end
