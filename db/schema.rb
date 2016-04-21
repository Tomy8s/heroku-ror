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

ActiveRecord::Schema.define(version: 20160417120214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tefls", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "link"
    t.text     "description"
    t.integer  "visited"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  add_foreign_key "tefls", "users"
end
