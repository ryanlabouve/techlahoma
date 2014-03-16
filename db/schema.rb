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

ActiveRecord::Schema.define(version: 20140316182839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_entries", force: true do |t|
    t.integer "blog_roll_id", null: false
    t.text    "title",        null: false
    t.text    "entry_uri",    null: false
    t.date    "posted_date",  null: false
  end

  add_index "blog_entries", ["entry_uri"], name: "unique_entry_uri", unique: true, using: :btree

  create_table "blog_rolls", force: true do |t|
    t.text    "title",                      null: false
    t.text    "author",                     null: false
    t.text    "blog_uri",                   null: false
    t.text    "feed_uri",                   null: false
    t.text    "feed_type",                  null: false
    t.boolean "active_flag", default: true, null: false
  end

  create_table "usergroups", force: true do |t|
    t.string   "name",       limit: 75,  null: false
    t.string   "blurb",      limit: 140, null: false
    t.string   "logo_url"
    t.string   "location"
    t.string   "twitter"
    t.string   "email",      limit: 75,  null: false
    t.string   "website",    limit: 75,  null: false
    t.string   "facebook"
    t.string   "linkedin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
