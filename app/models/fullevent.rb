class Fullevent < ActiveRecord::Base
  attr_accessible :analyst_id, :area_id 
  attr_accessible :backup_file, :crime_id, :description, :event_date, :id 
  attr_accessible :interior_number, :locality, :observations, :place_id 
  attr_accessible :priority_id, :source, :status_id, :street 
  attr_accessible :suburb, :township_id, :person_attributes, :fullname, :crimes_attributes
  
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
  
#  def crime
#    self.crime.crime
#  end
  
  def self.ransackable_attributes(auth_object = nil)
    ['crime','description','source','street','suburb']
  end
end
