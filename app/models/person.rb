class Person < ActiveRecord::Base
	has_many :vehicles
	has_many :demands
end
