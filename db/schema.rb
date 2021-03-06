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

ActiveRecord::Schema.define(version: 20150814065148) do

  create_table "matches", force: :cascade do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "home_team_set"
    t.integer  "away_team_set"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "matches", ["away_team_id"], name: "index_matches_on_away_team_id"
  add_index "matches", ["home_team_id"], name: "index_matches_on_home_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "points"
    t.integer  "sets_win"
    t.integer  "sets_lost"
    t.string   "image_url"
    t.string   "group"
  end

  add_index "teams", ["name"], name: "index_teams_on_name", unique: true

end
