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

ActiveRecord::Schema.define(version: 20160616034135) do

  create_table "adhocs", force: :cascade do |t|
    t.string   "orig"
    t.string   "depart"
    t.string   "dest"
    t.string   "arrive"
    t.string   "type_of_freight"
    t.string   "reason"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "bid_id"
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "price"
    t.integer  "miles"
    t.integer  "adhoc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
