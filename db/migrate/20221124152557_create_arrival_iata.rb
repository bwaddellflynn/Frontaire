class CreateArrivalIata < ActiveRecord::Migration[7.0]
  def change
    create_table :arrival_iata do |t|
      t.string :code
      t.string :location

      t.timestamps
    end
  end
end
