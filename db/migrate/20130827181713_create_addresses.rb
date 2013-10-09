class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :id
      t.string :street
      t.integer :interior_number
      t.string :colony
      t.string :locality

      t.timestamps
    end
  end
end
