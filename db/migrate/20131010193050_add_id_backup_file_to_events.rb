class AddIdBackupFileToEvents < ActiveRecord::Migration
  def change
    add_column :events, :backup_file_id, :integer
  end
end
