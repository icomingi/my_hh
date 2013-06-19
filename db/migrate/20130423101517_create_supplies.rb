class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
	  
      t.timestamps
    end
  end
end
