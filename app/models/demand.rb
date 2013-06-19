class Demand < ActiveRecord::Base
	belongs_to :demand_route
	belongs_to :person
end
