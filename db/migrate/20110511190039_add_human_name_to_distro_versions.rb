class AddHumanNameToDistroVersions < ActiveRecord::Migration
  def self.up
    add_column :distro_versions, :human_name, :string
  end

  def self.down
    remove_column :distro_versions, :human_name
  end
end
