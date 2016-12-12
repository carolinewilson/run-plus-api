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

ActiveRecord::Schema.define(version: 20161212103257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.integer  "position"
    t.integer  "exercise"
    t.integer  "plan_id"
    t.integer  "exercise_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "week"
    t.index ["exercise_id"], name: "index_days_on_exercise_id", using: :btree
    t.index ["plan_id"], name: "index_days_on_plan_id", using: :btree
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.float    "miles"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "level"
    t.string   "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_days", force: :cascade do |t|
    t.integer  "position"
    t.integer  "week"
    t.boolean  "completed"
    t.integer  "user_plan_id"
    t.integer  "exercise_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["exercise_id"], name: "index_user_days_on_exercise_id", using: :btree
    t.index ["user_plan_id"], name: "index_user_days_on_user_plan_id", using: :btree
  end

  create_table "user_plans", force: :cascade do |t|
    t.date     "end_date"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.boolean  "status"
    t.index ["user_id"], name: "index_user_plans_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "days", "exercises"
  add_foreign_key "days", "plans"
  add_foreign_key "user_days", "exercises"
  add_foreign_key "user_days", "user_plans"
  add_foreign_key "user_plans", "users"
end
