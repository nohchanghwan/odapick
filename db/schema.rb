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

ActiveRecord::Schema.define(version: 20160722084436) do

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "po_content"
    t.string   "url"
    t.string   "image",       default: ""
    t.integer  "avg_point"
    t.string   "anniversary"
    t.string   "age_group"
    t.string   "gift_gender"
    t.datetime "posted_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "present_point"
    t.text     "re_content"
    t.integer  "post_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email_id"
    t.string   "password"
    t.string   "name"
    t.string   "gender"
    t.datetime "birth"
    t.string   "job"
    t.datetime "joined_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
