class Status < ActiveRecord::Base
  attr_accessible :description, :id, :status_type, :detail
  has_many :person, :dependent => :destroy
  has_many :event, :dependent => :destroy 
  has_many :fullevent
end
