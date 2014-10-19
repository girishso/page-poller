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

ActiveRecord::Schema.define(version: 20141019172031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: true do |t|
    t.string   "message"
    t.integer  "scraper_id"
    t.string   "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["scraper_id"], name: "index_logs_on_scraper_id", using: :btree

  create_table "notifications", force: true do |t|
    t.text     "output"
    t.integer  "scraper_id"
    t.string   "notification_type"
    t.boolean  "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifications", ["scraper_id"], name: "index_notifications_on_scraper_id", using: :btree

  create_table "scrapers", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "target_element"
    t.string   "schedule"
    t.datetime "last_check"
    t.datetime "last_notification"
    t.json     "extract"
    t.integer  "user_id"
    t.integer  "expected_update_period"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "next_run_time"
    t.boolean  "status",                 default: true
    t.boolean  "send_sms",               default: false
  end

  add_index "scrapers", ["user_id"], name: "index_scrapers_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "guest"
  end

end
