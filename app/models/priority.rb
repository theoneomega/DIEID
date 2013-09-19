class Priority < ActiveRecord::Base
  attr_accessible :description, :id
  has_many :events, :dependent => :destroy
end
