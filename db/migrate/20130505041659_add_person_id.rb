class AddPersonId < ActiveRecord::Migration
  def up
	add_column :vehicles, :person_id, :integer
  end

  def down
	remove_column :vehicles, :person_id
  end
end
