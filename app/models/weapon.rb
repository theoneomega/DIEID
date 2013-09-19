class Weapon < ActiveRecord::Base
  attr_accessible :brand, :caliber, :id, :model, :person_id, :serial_number, :weapon, :weapon_type_id, :type
  attr_accessible :weapontype
  belongs_to :weapon_type
  belongs_to :person
  has_many :criminal_weapon, :dependent => :destroy
  has_many :events, :dependent => :destroy
#  belongs_to :criminal_group
  validates_presence_of :weapon_type_id, :presence => true, :message => 'selecciona tipo de arma'
  
  
  def fulldescription
    self.brand + " " + self.model + " " + self.caliber
  end
  
  def weapontype
    self.weapon_type.desc
  end
end
