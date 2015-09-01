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

ActiveRecord::Schema.define(version: 20150712203854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clockwork_database_events", force: true do |t|
    t.integer  "frequency_quantity"
    t.integer  "frequency_period_id"
    t.string   "at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clockwork_database_events", ["frequency_period_id"], name: "index_clockwork_database_events_on_frequency_period_id", using: :btree

  create_table "frequency_periods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_ins", force: true do |t|
    t.string   "to_country"
    t.string   "to_state"
    t.string   "sms_message_sid"
    t.string   "num_media"
    t.string   "to_city"
    t.string   "from_zip"
    t.string   "sms_sid"
    t.string   "from_state"
    t.string   "sms_status"
    t.string   "from_city"
    t.text     "body"
    t.string   "from_country"
    t.string   "to"
    t.string   "to_zip"
    t.string   "message_sid"
    t.string   "from"
    t.string   "api_version"
    t.string   "account_sid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_outs", force: true do |t|
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "phone",                            null: false
    t.string   "email"
    t.string   "password_digest"
    t.string   "session_token"
    t.boolean  "is_on_income_step", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["phone"], name: "index_users_on_phone", using: :btree

end
