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

ActiveRecord::Schema.define(version: 20150417013438) do

  create_table "addresses", force: true do |t|
    t.string   "street_number"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "contact_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_info_id"], name: "index_addresses_on_contact_info_id"

  create_table "contact_infos", force: true do |t|
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "home_teachee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contact_infos", ["home_teachee_id"], name: "index_contact_infos_on_home_teachee_id"

  create_table "histories", force: true do |t|
    t.string   "visit_summary"
    t.integer  "home_teachee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["home_teachee_id"], name: "index_histories_on_home_teachee_id"

  create_table "home_teachees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "home_teachee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issues", ["home_teachee_id"], name: "index_issues_on_home_teachee_id"

end
