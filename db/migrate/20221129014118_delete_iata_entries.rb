class DeleteIataEntries < ActiveRecord::Migration[7.0]
  def change
    DepartureIata.find_each(&:destroy)
  end
end
