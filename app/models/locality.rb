class Locality < ActiveRecord::Base
  attr_accessible :id, :locality, :township_id
  belongs_to :township
end
