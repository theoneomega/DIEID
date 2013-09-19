class Person < ActiveRecord::Base
  attr_accessible :alias, :birth_date, :ci, :first_name, :genre, :id, :last_name1
  attr_accessible :last_name2, :observations, :originative, :profession, :record, :status_id
  attr_accessible  :fullname, :description
  has_many :vehicles, :dependent => :destroy
  belongs_to :status
  has_many :weapons, :dependent => :destroy
  has_many :weapons
  has_many :vehicles
  #nested atributes for events
  has_many :event_person, :dependent => :destroy
  
  
  validates :first_name, :presence => {:message => 'debes introducir nombre'}
  validates :last_name1, :presence => {:message => 'debes introducir apellido'}
  validates :last_name2, :presence => {:message => 'debes introducir apellido'}
  
  def fullname
    first_name.titlecase + " " + last_name1.titlecase + " " + last_name2.titlecase
  end
end
