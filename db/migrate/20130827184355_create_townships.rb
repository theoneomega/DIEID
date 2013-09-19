class CreateTownships < ActiveRecord::Migration
  def change
    create_table :townships do |t|
      t.integer :di
      t.string :township

      t.timestamps
    end
  end
end
