class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|

      t.timestamps
    end
  end
end
