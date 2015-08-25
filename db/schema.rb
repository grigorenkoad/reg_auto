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

ActiveRecord::Schema.define(version: 20150821144317) do

  create_table "machines", force: :cascade do |t|
    t.string   "type"
    t.integer  "engine_capacity"
    t.string   "brand"
    t.string   "fuel_type"
    t.integer  "doors_count"
    t.integer  "amount_guggage"
    t.integer  "max_speed"
    t.integer  "load_capacity"
    t.boolean  "cabin_for_sleeping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
