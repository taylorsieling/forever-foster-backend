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

ActiveRecord::Schema.define(version: 2021_08_10_000419) do

  create_table "fosters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kittens", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.date "dob"
    t.string "breed"
    t.string "color"
    t.string "pattern"
    t.boolean "altered"
    t.boolean "microchipped"
    t.string "status"
    t.string "bio"
    t.string "portrait_url"
    t.integer "litter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["litter_id"], name: "index_kittens_on_litter_id"
  end

  create_table "litters", force: :cascade do |t|
    t.string "theme"
    t.date "intake_date"
    t.time "intake_time"
    t.string "intake_type"
    t.string "location_found"
    t.integer "foster_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["foster_id"], name: "index_litters_on_foster_id"
  end

  create_table "medical_entries", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.time "time"
    t.string "notes"
    t.integer "kitten_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kitten_id"], name: "index_medical_entries_on_kitten_id"
  end

  create_table "weights", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "value"
    t.string "unit"
    t.integer "kitten_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kitten_id"], name: "index_weights_on_kitten_id"
  end

  add_foreign_key "kittens", "litters"
  add_foreign_key "litters", "fosters"
  add_foreign_key "medical_entries", "kittens"
  add_foreign_key "weights", "kittens"
end
