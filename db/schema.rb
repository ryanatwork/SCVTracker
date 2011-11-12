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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111022204547) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assigns", :force => true do |t|
    t.string   "team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charges", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crime_tips", :force => true do |t|
    t.date     "date_rec"
    t.date     "date_due"
    t.integer  "crime_id"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "cross_street"
    t.string   "informant_name"
    t.string   "informant_phone"
    t.string   "informant_email"
    t.string   "suspect_first_name"
    t.string   "suspect_last_name"
    t.date     "suspect_dob"
    t.string   "suspect_age"
    t.integer  "suspect_race_id"
    t.string   "suspect_gender"
    t.string   "suspect_street_number"
    t.string   "suspect_street_name"
    t.string   "suspect_city"
    t.integer  "suspect_school_id"
    t.string   "suspect_phone"
    t.string   "suspect_cell"
    t.string   "gang"
    t.string   "vehicle"
    t.string   "license_plate"
    t.integer  "drug_id"
    t.date     "date_assigned"
    t.date     "date_completed"
    t.string   "charges"
    t.string   "urn"
    t.text     "clearance"
    t.text     "side_notes"
    t.boolean  "search_warrant"
    t.boolean  "probation_search"
    t.boolean  "parole_search"
    t.boolean  "arrested"
    t.string   "suspect_2"
    t.string   "suspect_3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tip_number"
    t.integer  "assign_id"
    t.string   "status"
    t.string   "city"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "zone_id"
  end

  create_table "crimes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "risk_factors", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "id_number"
    t.string   "gender"
    t.date     "dob"
    t.integer  "race_id"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "address_2"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "alt_name"
    t.integer  "school_id"
    t.integer  "updated_school_id"
    t.string   "grade"
    t.string   "vehicle"
    t.string   "associates"
    t.string   "crimes"
    t.string   "urn"
    t.boolean  "probation"
    t.string   "probation_status"
    t.string   "gang"
    t.string   "moniker"
    t.integer  "drug_id"
    t.text     "programs"
    t.text     "notes"
    t.integer  "risk_factor_id"
    t.integer  "school_deputy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tip_files", :force => true do |t|
    t.string   "tip_file_name"
    t.string   "tip_content_type"
    t.integer  "tip_file_size"
    t.datetime "tip_updated_at"
    t.integer  "crime_tip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "zones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
