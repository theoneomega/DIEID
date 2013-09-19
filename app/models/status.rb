class Status < ActiveRecord::Base
  attr_accessible :description, :id, :status_type
  has_many :person, :dependent => :destroy
  has_many :event, :dependent => :destroy 
end
