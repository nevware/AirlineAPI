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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 5) do

  create_table "connections", :force => true do |t|
    t.integer  "sequenceNumber"
    t.string   "origin"
    t.string   "destination"
    t.date     "date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "flights", :force => true do |t|
    t.string   "flightNumber"
    t.string   "marketingAirlineCode"
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "memberships", :force => true do |t|
    t.string   "membershipNumber"
    t.string   "membershipProgram"
    t.string   "membershipTierLevel"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "passengers", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservations", :force => true do |t|
    t.string   "reservationID"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end