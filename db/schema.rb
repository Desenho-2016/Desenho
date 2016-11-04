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

ActiveRecord::Schema.define(version: 20161104021606) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "discipline_id"
    t.string   "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "common_averages", force: :cascade do |t|
    t.float    "scorep1"
    t.float    "scorep2"
    t.float    "scorep3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount_credits"
    t.integer  "teacher_id"
    t.integer  "period_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "disciplines", ["period_id"], name: "index_disciplines_on_period_id"
  add_index "disciplines", ["teacher_id"], name: "index_disciplines_on_teacher_id"

  create_table "graphics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mention_software_designs", force: :cascade do |t|
    t.float    "score1"
    t.float    "score2"
    t.float    "score3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentions", force: :cascade do |t|
    t.string   "value"
    t.string   "semester"
    t.integer  "discipline_id"
    t.integer  "teacher_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "period_id"
  end

  add_index "mentions", ["discipline_id"], name: "index_mentions_on_discipline_id"
  add_index "mentions", ["period_id"], name: "index_mentions_on_period_id"
  add_index "mentions", ["teacher_id"], name: "index_mentions_on_teacher_id"

  create_table "periods", force: :cascade do |t|
    t.string   "name"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "square_roots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "password_digest"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
    t.string   "type_user",           default: "visitor"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
