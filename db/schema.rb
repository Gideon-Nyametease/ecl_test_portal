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

ActiveRecord::Schema.define(version: 2022_06_20_201726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "gideon_tests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "nationality"
    t.string "phone_number"
    t.string "email"
    t.string "id_type"
    t.string "id_number"
    t.string "home_address"
    t.string "second_address"
    t.string "occupation"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "new_email"
    t.string "new_password"
  end

  create_table "media_uploads", force: :cascade do |t|
    t.integer "onesimus_test_id"
    t.string "image_name"
    t.string "location"
    t.boolean "active_status"
    t.boolean "del_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
