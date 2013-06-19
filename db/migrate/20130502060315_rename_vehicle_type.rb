class RenameVehicleType < ActiveRecord::Migration
  def up
	rename_column :vehicles, :type, :vehicle_type
  end

  def down
	rename_column :vehicles, :vehicle_type, :type
  end
end
