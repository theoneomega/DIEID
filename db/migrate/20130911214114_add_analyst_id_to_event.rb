class AddAnalystIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :analyst_id, :integer
  end
end
