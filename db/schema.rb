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

ActiveRecord::Schema.define(version: 20200601193231) do

  create_table "callsigns", force: :cascade do |t|
    t.string  "name"
    t.boolean "active"
    t.integer "user_id"
    t.string  "gridsquare"
  end

  create_table "contacts", force: :cascade do |t|
    t.string  "call"
    t.string  "date"
    t.string  "time"
    t.string  "band"
    t.string  "mode"
    t.string  "frequency"
    t.string  "county"
    t.string  "state"
    t.string  "country"
    t.string  "grid"
    t.string  "iota"
    t.string  "cqzone"
    t.string  "itu"
    t.boolean "qsl_send"
    t.boolean "qsl_rcvd"
    t.string  "my_qth"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "email"
  end

end
