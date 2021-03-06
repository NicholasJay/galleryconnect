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

ActiveRecord::Schema.define(version: 20150213031057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "phone"
    t.string  "email"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.text    "prayer"
    t.text    "notes"
    t.integer "user_id"
    t.boolean "called"
  end

  create_table "users", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone_number"
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.string  "password_digest"
  end

  create_table "webcards", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "phone"
    t.string  "email"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.text    "prayer"
    t.text    "notes"
    t.integer "user_id"
    t.boolean "called"
  end

end
