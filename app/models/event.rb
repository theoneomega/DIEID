class Event < ActiveRecord::Base
  attr_accessible :analyst_id, :area_id, :backup_file, :crime_id, :description
  attr_accessible :detained, :detained_id, :drug_id, :drugs, :event_date, :id
  attr_accessible :interior_number, :locality, :observations, :place_id, :priority_id
  attr_accessible:source, :status_id, :street, :suburb, :suspect_id, :suspects, :township_id
  attr_accessible :vehicle_id, :vehicles, :victim_id, :victims, :weapon_id, :weapons, :person_attributes, :weapons_attributes, :vehicles_attributes
  
  belongs_to :priority
  belongs_to :crime
  has_many :event_person, :dependent => :destroy
  has_many :person, :through => :event_person
  has_many :vehicles, :through => :event_vehicles
  has_many :event_vehicles, :dependent => :destroy
  has_many :event_drugs, :dependent => :destroy
  has_many :drug, :through => :event_drugs
  has_many :weapons, :through => :event_weapons
  has_many :event_weapons, :dependent => :destroy
  belongs_to :area
  belongs_to :status
  belongs_to :analyst 
  belongs_to :township
  belongs_to :place
  
  validates :priority, :presence => true
  validates :description, :presence => true
  validates :area_id, :presence => true
  
  accepts_nested_attributes_for :person, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :vehicles, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :drug, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :weapons, :allow_destroy => true, :reject_if => :all_blank
  
#  def self.ransackable_attributes(auth_object = nil)
#    ['description','source','street','suburb','area']
#  end
end