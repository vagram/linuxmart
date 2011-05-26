class CreateDistroVersions < ActiveRecord::Migration
  def self.up
    create_table :distro_versions do |t|
      t.string :name
      t.integer :distro_id

      t.timestamps
    end
  end

  def self.down
    drop_table :distro_versions
  end
end
