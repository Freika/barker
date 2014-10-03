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

ActiveRecord::Schema.define(version: 20141003123552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auction_items", force: true do |t|
    t.integer  "auc"
    t.integer  "item"
    t.string   "owner"
    t.string   "owner_realm"
    t.integer  "bid"
    t.integer  "buyout"
    t.integer  "quantity"
    t.string   "timeleft"
    t.string   "rand"
    t.string   "seed"
    t.string   "realm"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "faction"
  end

  create_table "auctions", force: true do |t|
    t.string   "realm_slug"
    t.string   "realm_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "connected_realms"
    t.string   "last_modified"
  end

end
