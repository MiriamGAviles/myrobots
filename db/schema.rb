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

ActiveRecord::Schema.define(version: 2019_11_11_094104) do

  create_table "armors", force: :cascade do |t|
    t.string "a_type"
    t.string "serial_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "robots_id"
    t.index ["robots_id"], name: "index_armors_on_robots_id"
  end

  create_table "robots", force: :cascade do |t|
    t.string "r_type"
    t.string "name"
    t.string "serial_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "w_type"
    t.string "serial_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "robots_id"
    t.index ["robots_id"], name: "index_weapons_on_robots_id"
  end

  add_foreign_key "armors", "robots", column: "robots_id"
  add_foreign_key "weapons", "robots", column: "robots_id"
end
