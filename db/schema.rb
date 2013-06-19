# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130531023009) do

  create_table "demand_routes", :force => true do |t|
    t.float    "origin_lat"
    t.float    "origin_long"
    t.string   "origin"
    t.float    "dest_lat"
    t.float    "dest_long"
    t.string   "dest"
    t.datetime "departure"
    t.time     "travel_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "demands", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "person_id"
    t.integer  "demand_route_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.date     "birthday"
    t.date     "license"
    t.string   "gender"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routes", :force => true do |t|
    t.float    "origin_lat"
    t.float    "origin_long"
    t.string   "origin"
    t.float    "dest_lat"
    t.float    "dest_long"
    t.string   "dest"
    t.datetime "departure"
    t.time     "travel_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seats", :force => true do |t|
    t.string   "seat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supplies", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supply_routes", :force => true do |t|
    t.float    "origin_lat"
    t.float    "origin_long"
    t.string   "origin"
    t.float    "dest_lat"
    t.float    "dest_long"
    t.string   "dest"
    t.datetime "departure"
    t.time     "travel_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vehicles", :force => true do |t|
    t.string   "license_plate"
    t.string   "vehicle_type"
    t.string   "brand"
    t.string   "nameplate"
    t.integer  "model_year"
    t.string   "color"
    t.date     "purchased"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "person_id"
  end

end
