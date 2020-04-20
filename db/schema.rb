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

ActiveRecord::Schema.define(version: 2020_04_20_162158) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.text "desc", null: false
    t.bigint "starting_bid", null: false
    t.datetime "deadline", null: false
    t.string "image", null: false
    t.bigint "current_bid", null: false
    t.bigint "creator_id"
    t.bigint "highest_bidder"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["creator_id"], name: "fk_rails_abba16b043"
    t.index ["highest_bidder"], name: "fk_rails_5db6409530"
    t.index ["name"], name: "index_items_on_name"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rno", null: false
    t.string "name", null: false
    t.text "pwd", null: false
    t.bigint "pno", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rno"], name: "index_users_on_rno"
  end

  add_foreign_key "items", "users", column: "creator_id"
  add_foreign_key "items", "users", column: "highest_bidder"
end
