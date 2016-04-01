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

ActiveRecord::Schema.define(version: 20160401091628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.text     "comment"
    t.integer  "likes"
    t.integer  "dislikes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_no"
    t.string   "title"
    t.text     "body"
    t.integer  "views"
    t.integer  "likes"
    t.integer  "dislikes"
    t.integer  "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 15
    t.string   "last_name",       limit: 15
    t.date     "d_o_b"
    t.integer  "age"
    t.boolean  "male"
    t.string   "email",           limit: 63
    t.string   "location",        limit: 31
    t.decimal  "timezone"
    t.string   "username",        limit: 15
    t.string   "password_digest"
    t.boolean  "online"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "users"
end
