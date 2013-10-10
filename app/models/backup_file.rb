class BackupFile < ActiveRecord::Base
  attr_accessible :event_id, :file, :id
  mount_uploader :file, BackupFileUploader
  
  def archivo
    self.event_id.to_s + " " + self.id.to_s
  end
end
