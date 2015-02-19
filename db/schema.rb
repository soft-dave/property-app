# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150217140536) do

  create_table "properties", force: :cascade do |t|
    t.integer  "user_id",                       limit: 4
    t.string   "property_type",                 limit: 255
    t.string   "privacy",                       limit: 255
    t.integer  "no_of_badroom",                 limit: 4
    t.integer  "no_of_bathroom",                limit: 4
    t.boolean  "allow_multiple_user_to_share",  limit: 1
    t.boolean  "allow_individual_user_to_rent", limit: 1
    t.string   "lease_type",                    limit: 255
    t.datetime "availibility"
    t.boolean  "accept_mon_fri_booking",        limit: 1
    t.boolean  "same_as_landlord_address",      limit: 1
    t.boolean  "different_address",             limit: 1
    t.string   "street_number",                 limit: 255
    t.string   "route",                         limit: 255
    t.string   "locality",                      limit: 255
    t.string   "administrative_area_level_1",   limit: 255
    t.string   "country",                       limit: 255
    t.integer  "postal_code",                   limit: 4
    t.string   "unit_number",                   limit: 255
    t.integer  "rent",                          limit: 4
    t.string   "rent_type",                     limit: 255
    t.string   "unit_title",                    limit: 255
    t.integer  "unit_rent",                     limit: 4
    t.string   "utilities",                     limit: 255
    t.string   "amenities_and_features",        limit: 255
    t.string   "nearby_attractions",            limit: 255
    t.text     "description",                   limit: 65535
    t.text     "rules",                         limit: 65535
    t.string   "housemates",                    limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "property_images", force: :cascade do |t|
    t.integer  "property_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "attachment_file_name",    limit: 255
    t.string   "attachment_content_type", limit: 255
    t.integer  "attachment_file_size",    limit: 4
    t.datetime "attachment_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
