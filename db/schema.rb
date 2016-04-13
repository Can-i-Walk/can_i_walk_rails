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

ActiveRecord::Schema.define(version: 20160413151034) do

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "places", force: :cascade do |t|
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "place_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "places", ["user_id"], name: "index_places_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.integer  "ease_rating"
    t.integer  "safety_rating"
    t.integer  "enjoyability_rating"
    t.integer  "accessibility_rating"
    t.text     "comment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ratings", ["place_id"], name: "index_ratings_on_place_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "session_tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_points", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "trip_id"
    t.string   "place_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trip_points", ["place_id"], name: "index_trip_points_on_place_id"
  add_index "trip_points", ["trip_id"], name: "index_trip_points_on_trip_id"

  create_table "trips", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "trip_name"
    t.datetime "walked_at"
    t.datetime "planned_at"
    t.decimal  "distance"
    t.boolean  "completion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trips", ["user_id"], name: "index_trips_on_user_id"

  create_table "users", force: :cascade do |t|
    t.text     "token"
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.decimal  "max_distance"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
