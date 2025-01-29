# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_29_061828) do
# Could not dump table "families" because of following StandardError
#   Unknown type 'uuid' for column 'id'


  create_table "family_memberships", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "family_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "family_id"], name: "index_family_memberships_on_user_id_and_family_id", unique: true
  end

  create_table "meal_delays", force: :cascade do |t|
    t.integer "family_id", null: false
    t.integer "user_id", null: false
    t.string "meal_type", null: false
    t.date "date", null: false
    t.time "expected_time", null: false
    t.time "late_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id", "date"], name: "index_meal_delays_on_family_id_and_date"
    t.index ["user_id", "date", "meal_type"], name: "index_meal_delays_on_user_id_and_date_and_meal_type", unique: true
  end

  create_table "meal_schedules", force: :cascade do |t|
    t.integer "family_id", null: false
    t.integer "user_id", null: false
    t.string "meal_type", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id", "date"], name: "index_meal_schedules_on_family_id_and_date"
    t.index ["user_id", "date", "meal_type"], name: "index_meal_schedules_on_user_id_and_date_and_meal_type", unique: true
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'uuid' for column 'id'


  add_foreign_key "family_memberships", "families"
  add_foreign_key "family_memberships", "users"
  add_foreign_key "meal_delays", "families"
  add_foreign_key "meal_delays", "users"
  add_foreign_key "meal_schedules", "families"
  add_foreign_key "meal_schedules", "users"
end
