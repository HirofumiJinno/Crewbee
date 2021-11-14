# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_14_060832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boat_uses", force: :cascade do |t|
    t.bigint "practice_id", null: false
    t.bigint "boat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boat_id"], name: "index_boat_uses_on_boat_id"
    t.index ["practice_id"], name: "index_boat_uses_on_practice_id"
  end

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "rower_id", null: false
    t.bigint "practice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["practice_id"], name: "index_participations_on_practice_id"
    t.index ["rower_id"], name: "index_participations_on_rower_id"
  end

  create_table "practices", force: :cascade do |t|
    t.date "date"
    t.time "starts_at"
    t.time "ends_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rowers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boat_uses", "boats"
  add_foreign_key "boat_uses", "practices"
  add_foreign_key "participations", "practices"
  add_foreign_key "participations", "rowers"
end
