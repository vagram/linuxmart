class CreateHumannames < ActiveRecord::Migration
  def self.up
    create_table :humannames do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :humannames
  end
end
