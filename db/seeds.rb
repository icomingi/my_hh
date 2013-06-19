# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'date'

Person.delete_all

j = Person.create(name: "Josh Chen",
  birthday: Date.new(1988, 10, 1),
  license: Date.new(2011, 6, 1),
  gender: "male",
  email: "josherichchen@gmail.com")
  
z = Person.create(name: "Zhiqiang Zhong",
  birthday: Date.new(1986, 11, 1),
  license: Date.new(2012, 10, 15),
  gender: "male",
  email: "zhongzq04@gmail.com")
  
Vehicle.delete_all  
  
v1 = Vehicle.create(license_plate: "RIDE001",
  vehicle_type: "sedan",
  brand: "Ford",
  nameplate: "Focus",
  model_year: 2012,
  color: "white",
  purchased: Date.new(2012, 11, 11))
  
v2 = Vehicle.create(license_plate: "RIDE002",
  vehicle_type: "sedan",
  brand: "VW",
  nameplate: "Golf",
  model_year: 2012,
  color: "red",
  purchased: Date.new(2012, 12, 1))
  
v3 = Vehicle.create(license_plate: "RIDE003",
  vehicle_type: "sedan",
  brand: "Cheverolet",
  nameplate: "Cruze",
  model_year: 2012,
  color: "silver",
  purchased: Date.new(2012, 2, 20))
  
v1.person = j
v1.save
v2.person = z
v2.save

demand_route1 = DemandRoute.create(origin: "Hualing Road, Baoshan, Shanghai", dest: "Lujiazui, Pudong, Shanghai", departure: Date.new(2013, 6, 1))
demand_route2 = DemandRoute.create(origin: "Zhangjiang, Pudong, Shanghai", dest: "Lujiazui, Pudong, Shanghai", departure: Date.new(2013, 6, 4))

demand1 = Demand.new
demand1.person = j
demand1.demand_route = demand_route1
demand1.save

demand2 = Demand.new
demand2.person = z
demand2.demand_route = demand_route2
demand2.save