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

ActiveRecord::Schema.define(:version => 20120730192129) do

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.integer  "rank"
    t.integer  "gold",         :default => 0
    t.integer  "silver",       :default => 0
    t.integer  "bronze",       :default => 0
    t.decimal  "points",       :default => 0.0
    t.decimal  "factor",       :default => 0.0
    t.decimal  "total_points", :default => 0.0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "person_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.decimal  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
