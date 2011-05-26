class CreateSpins < ActiveRecord::Migration
  def self.up
    create_table :spins do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :spins
  end
end
