class Township < ActiveRecord::Base
  attr_accessible :di, :township
  has_many :events, :dependent => :destroy
end
