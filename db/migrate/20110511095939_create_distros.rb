class CreateDistros < ActiveRecord::Migration
  def self.up
    create_table :distros do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :distros
  end
end
