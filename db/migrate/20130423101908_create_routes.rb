class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
	  t.float :origin_lat
	  t.float :origin_long
	  t.string :origin
	  t.float :dest_lat
	  t.float :dest_long
	  t.string :dest
	  t.datetime :departure
	  t.time :travel_time
      t.timestamps
    end
  end
end
