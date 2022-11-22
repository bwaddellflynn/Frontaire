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

ActiveRecord::Schema[7.0].define(version: 2022_11_22_221835) do
  create_table "flights", force: :cascade do |t|
    t.integer "ticket_id"
    t.string "destination"
    t.datetime "flight_date"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.string "departure_iata"
    t.string "arrival_iata"
    t.string "departure_icao"
    t.string "arrival_icao"
    t.float "price"
    t.boolean "vaccancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travelguides", primary_key: "blog_id", force: :cascade do |t|
    t.integer "admin_id"
    t.string "blog_title"
    t.string "blog_desc"
    t.text "blog_content"
    t.datetime "date_published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
