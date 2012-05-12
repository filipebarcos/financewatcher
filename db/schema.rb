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

ActiveRecord::Schema.define(:version => 20120512030619) do

  create_table "configurations", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "configurations", ["user_id"], :name => "index_configurations_on_user_id", :unique => true

  create_table "configurations_tickers", :id => false, :force => true do |t|
    t.integer "configuration_id"
    t.integer "ticker_id"
  end

  create_table "tickers", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "code",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tickers", ["code"], :name => "index_tickers_on_code", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name",          :null => false
    t.string   "email",         :null => false
    t.string   "password_hash", :null => false
    t.string   "password_salt", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
