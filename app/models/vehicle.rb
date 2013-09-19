class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :details, :id, :line, :model, :person_id, :serial_number, :status, :stolen, :plate
  attr_accessible :fulldescription, :people_attributes
  belongs_to :person
  has_many :event_vehicles, :dependent => :destroy
  has_many :criminal_vehicle, :dependent => :destroy
  has_many :events
  
  def fulldescription
    self.brand + " " + self.line + " " + self.model.to_s + " "+ self.color
  end
  
end
