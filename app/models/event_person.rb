class EventPerson < ActiveRecord::Base
  attr_accessible :event_id, :person_id
  belongs_to :event
  belongs_to :person
  validates_uniqueness_of :event_id, :scope => :person_id
end
