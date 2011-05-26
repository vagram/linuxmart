class Distro < ActiveRecord::Base
 belongs_to :family
 has_many :distro_versions
 has_attached_file :logo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>"}
end
