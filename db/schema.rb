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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150304105114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gpx_files", force: :cascade do |t|
    t.string   "filename"
    t.string   "gpx_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "gpx_name"
  end

  create_table "layers", force: :cascade do |t|
    t.integer  "route_id"
    t.string   "gpx_uid"
    t.string   "gpx_name"
    t.string   "kml_uid"
    t.string   "kml_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markers", force: :cascade do |t|
    t.string   "area"
    t.string   "city"
    t.string   "country"
    t.string   "ranger_stations_uid"
    t.string   "ranger_stations_name"
    t.string   "police_stations_uid"
    t.string   "police_stations_name"
    t.string   "fire_stations_uid"
    t.string   "fire_stations_name"
    t.string   "danger_animal_uid"
    t.string   "danger_animal_name"
    t.string   "water_source_uid"
    t.string   "water_source_name"
    t.string   "shelters_uid"
    t.string   "shelters_name"
    t.string   "picnic_areas_uid"
    t.string   "picnic_areas_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "rings", force: :cascade do |t|
    t.integer  "route_id"
    t.integer  "trail_id"
    t.decimal  "ring_latitude"
    t.decimal  "ring_longitude"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.string   "area"
    t.string   "city"
    t.string   "country"
    t.string   "description"
    t.decimal  "initial_latitude"
    t.decimal  "initial_longitude"
    t.float    "size"
    t.integer  "score"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.decimal  "final_latitude"
    t.decimal  "final_longitude"
  end

  create_table "trails", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "initial_latitude"
    t.decimal  "initial_longitude"
    t.decimal  "final_latitude"
    t.decimal  "final_longitude"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
