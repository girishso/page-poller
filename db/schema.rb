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

ActiveRecord::Schema.define(version: 20180424000759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: :cascade do |t|
    t.text     "message"
    t.integer  "scraper_id"
    t.string   "extra",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["scraper_id"], name: "index_logs_on_scraper_id", using: :btree

  create_table "notifications", force: :cascade do |t|
    t.text     "output"
    t.integer  "scraper_id"
    t.string   "notification_type", limit: 255
    t.boolean  "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifications", ["scraper_id"], name: "index_notifications_on_scraper_id", using: :btree

  create_table "scrapers", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "url",                    limit: 255
    t.string   "target_element",         limit: 255
    t.string   "schedule",               limit: 255
    t.datetime "last_check"
    t.datetime "last_notification"
    t.text     "extract"
    t.integer  "user_id"
    t.integer  "expected_update_period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "next_run_time"
    t.boolean  "status",                             default: true
    t.boolean  "send_sms",                           default: false
    t.string   "subject"
  end

  add_index "scrapers", ["user_id"], name: "index_scrapers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "guest"
  end

end
