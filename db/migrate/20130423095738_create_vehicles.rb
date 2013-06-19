class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
	  t.string :license_plate
	  t.string :type
      t.string :brand
	  t.string :nameplate
	  t.integer :model_year
	  t.string :color
	  t.date :purchased
      t.timestamps
    end
  end
end
