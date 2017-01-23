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

ActiveRecord::Schema.define(version: 20170123134052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "by"
    t.integer  "courses_site_id"
    t.integer  "rating"
    t.integer  "complete"
    t.text     "description"
    t.text     "learnt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "img"
    t.string   "address"
    t.integer  "instructor_id"
    t.string   "tag"
  end

  add_index "courses", ["courses_site_id"], name: "index_courses_on_courses_site_id", using: :btree
  add_index "courses", ["instructor_id"], name: "index_courses_on_instructor_id", using: :btree

  create_table "courses_sites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.string   "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "repo_url"
    t.text     "tech",        default: [],              array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "live_url"
    t.text     "description"
  end

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tefls", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "link"
    t.text     "description"
    t.integer  "visited"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  add_index "tefls", ["user_id"], name: "index_tefls_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "sname"
    t.string   "password_digest"
    t.string   "salt"
    t.date     "dob"
    t.string   "gender"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "uname"
  end

  add_foreign_key "courses", "courses_sites"
  add_foreign_key "courses", "instructors"
  add_foreign_key "tefls", "users"
end
