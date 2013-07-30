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

ActiveRecord::Schema.define(version: 20130728163141) do

  create_table "answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
  end

  add_index "answers", ["player_id"], name: "index_answers_on_player_id"

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "votes"
  end

  add_index "clubs", ["votes"], name: "index_clubs_on_votes"

  create_table "guests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.integer  "goalkeeper"
    t.integer  "defender1"
    t.integer  "defender2"
    t.integer  "defender3"
    t.integer  "defender4"
    t.integer  "midfielder1"
    t.integer  "midfielder2"
    t.integer  "midfielder3"
    t.integer  "midfielder4"
    t.integer  "forward1"
    t.integer  "forward2"
    t.string   "name"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
    t.integer  "club_id"
    t.integer  "votes"
  end

  create_table "questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
