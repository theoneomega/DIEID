class Role < ActiveRecord::Base
  attr_accessible :administrator, :analyst, :id, :protected, :role, :super_admin, :supervisor, :medios
  has_many :users,:dependent => :destroy
end
