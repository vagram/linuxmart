
class Product < ActiveRecord::Base
   belongs_to :family
   belongs_to :distro
   belongs_to :platform
   belongs_to :distro_version
   belongs_to :spin
end
