class CreateFlights < ActiveRecord::Migration
  def self.up
    create_table :flights do |t|
      t.string :flightNumber
      t.string :marketingAirlineCode
      t.string :origin
      t.string :destination
      t.timestamps
    end
  end

  def self.down
    drop_table :flights
  end
end
