class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :id
      t.integer :priority_id
      t.date :event_date
      t.text :description
      t.string :street
      t.string :interior_number
      t.string :suburb
      t.string :locality
      t.boolean :victims
      t.integer :victim_id
      t.boolean :detained
      t.integer :detained_id
      t.boolean :suspects
      t.integer :suspect_id
      t.boolean :vehicles
      t.integer :vehicle_id
      t.boolean :drugs
      t.integer :drug_id
      t.boolean :weapons
      t.integer :weapon_id
      t.text :observations
      t.string :backup_file
      t.string :source
      t.integer :analist_id
      t.integer :area_id
      t.integer :crime_id
      t.integer :township_id
      t.integer :place_id
      t.integer :status_id

      t.timestamps
    end
  end
end
