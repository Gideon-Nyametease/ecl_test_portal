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

ActiveRecord::Schema.define(version: 2022_06_19_102523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "onesimus_tests", force: :cascade do |t|
    t.string "name_of_insured"
    t.string "address"
    t.string "occupation"
    t.string "telephone"
    t.string "reg_number"
    t.string "make"
    t.string "model"
    t.string "year_of_make"
    t.string "business_private"
    t.string "driver_name"
    t.string "driver_address"
    t.integer "driver_age"
    t.string "driver_telephone"
    t.string "driving_license_no"
    t.string "licence_class"
    t.date "date_of_issue"
    t.boolean "convicted_of_motoring_offence"
    t.date "loss_date"
    t.time "time_of_loss"
    t.string "accident_location"
    t.string "vehicle_speed"
    t.string "nature_of_loss"
    t.text "accident_desc"
    t.date "report_date"
    t.string "policy_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
