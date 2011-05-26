class AddIssuedOnToDistroVersions < ActiveRecord::Migration
  def self.up
    add_column :distro_versions, :issued_on, :date
  end

  def self.down
    remove_column :distro_versions, :issued_on
  end
end
