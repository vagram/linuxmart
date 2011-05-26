class DistroVersion < ActiveRecord::Base
  belongs_to :distro
  has_many :products 
  scope :latest, order("issued_on DESC")


  #scope :latest, order("issued_on ASC")
  #
  # эквивалентно
  #
  #def self.latest
  #  DistroVersion.all.sort { |a,b| b.issued_on <=> a.issued_on }
  #end
end
