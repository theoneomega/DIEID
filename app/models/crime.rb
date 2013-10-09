class Crime < ActiveRecord::Base
  attr_accessible :crime, :id
  has_many :events
  has_many :fullevent
  def self.ransackable_attributes(auth_object = nil)
    ['crime']
  end
end
