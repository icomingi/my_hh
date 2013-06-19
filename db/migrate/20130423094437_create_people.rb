class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
	  t.string :name
	  t.date :birthday
	  t.date :license
	  t.string :gender
	  t.string :email
      t.timestamps
    end
  end
end
