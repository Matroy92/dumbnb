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


ActiveRecord::Schema.define(version: 2021_10_07_173843) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.integer "price"
    t.bigint "user_id", null: false
    t.bigint "offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "from_hour"
    t.time "to_hour"
    t.integer "rating"
    t.index ["offer_id"], name: "index_bookings_on_offer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "description"
    t.integer "hour_rate"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "availability_start_date"
    t.date "availability_end_date"
    t.time "availability_start_hour"
    t.time "availability_end_hour"
    t.string "country"
    t.string "city"
    t.integer "radius"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "offers"
  add_foreign_key "bookings", "users"
  add_foreign_key "offers", "users"
end
