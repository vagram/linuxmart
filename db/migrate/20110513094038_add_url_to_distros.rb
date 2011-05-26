class AddUrlToDistros < ActiveRecord::Migration
  def self.up
    add_column :distros, :url, :string
  end

  def self.down
    remove_column :distros, :url
  end
end
