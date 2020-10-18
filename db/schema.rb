# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_16_173034) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "apartment_details", force: :cascade do |t|
    t.string "housing_type"
    t.integer "rent"
    t.integer "deposit"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.date "available"
    t.boolean "pets"
    t.text "description"
    t.integer "sq_foot"
    t.boolean "washer_dryer"
    t.boolean "laundry"
    t.boolean "street_parking"
    t.boolean "parking"
    t.boolean "dishwasher"
    t.boolean "central_air"
    t.boolean "swimming_pool"
    t.boolean "gym"
    t.integer "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_apartment_details_on_apartment_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "street_address", default: "", null: false
    t.string "apt"
    t.string "city", default: "", null: false
    t.string "state", default: "", null: false
    t.integer "zip_code", null: false
    t.integer "landlord_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landlord_id"], name: "index_apartments_on_landlord_id"
  end

  create_table "asks", force: :cascade do |t|
    t.string "message"
    t.integer "user_id"
    t.integer "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_asks_on_apartment_id"
    t.index ["user_id"], name: "index_asks_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "message"
    t.integer "user_id"
    t.integer "ask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ask_id"], name: "index_chats_on_ask_id"
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "fax"
    t.string "email"
    t.string "street_address"
    t.string "suite"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_landlords_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "actor_id"
    t.datetime "read_at"
    t.string "action"
    t.integer "notifiable_id"
    t.string "notifiable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "city"
    t.integer "beds"
    t.integer "baths"
    t.decimal "min_price"
    t.decimal "max_price"
    t.date "move_in_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
