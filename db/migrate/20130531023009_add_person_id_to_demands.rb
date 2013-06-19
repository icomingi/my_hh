class AddPersonIdToDemands < ActiveRecord::Migration
  def change
	add_column :demands, :person_id, :integer
	add_column :demands, :demand_route_id, :integer
  end
end
