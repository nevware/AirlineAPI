class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :connections do |t|
      t.integer :sequenceNumber
      t.string :origin
      t.string :destination
      t.date :date
      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
