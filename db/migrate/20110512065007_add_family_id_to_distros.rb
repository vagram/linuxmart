class AddFamilyIdToDistros < ActiveRecord::Migration
  def self.up
    add_column :distros, :family_id, :integer
  end

  def self.down
    remove_column :distros, :family_id
  end
end
