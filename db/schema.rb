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

ActiveRecord::Schema.define(version: 2019_11_27_060222) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "keeper_id"
    t.index ["keeper_id"], name: "index_animals_on_keeper_id"
  end

  create_table "donations", force: :cascade do |t|
    t.integer "donor_id", null: false
    t.integer "wish_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["donor_id"], name: "index_donations_on_donor_id"
    t.index ["wish_id"], name: "index_donations_on_wish_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keepers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toys", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "wishes", force: :cascade do |t|
    t.integer "animal_id", null: false
    t.integer "toy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_wishes_on_animal_id"
    t.index ["toy_id"], name: "index_wishes_on_toy_id"
  end

  add_foreign_key "animals", "keepers"
  add_foreign_key "donations", "donors"
  add_foreign_key "donations", "wishes"
  add_foreign_key "wishes", "animals"
  add_foreign_key "wishes", "toys"
end
