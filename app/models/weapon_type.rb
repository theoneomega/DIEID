class WeaponType < ActiveRecord::Base
  attr_accessible :desc, :id
  has_many :weapon, :dependent => :destroy
end
