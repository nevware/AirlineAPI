class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.string :membershipNumber
      t.string :membershipProgram
      t.string :membershipTierLevel
      t.timestamps
    end
  end

  def self.down
    drop_table :memberships
  end
end
