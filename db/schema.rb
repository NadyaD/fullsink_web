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

ActiveRecord::Schema.define(:version => 20130602202735) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "resolvers", :force => true do |t|
    t.string   "device",     :limit => 20,                         :null => false
    t.string   "devtype",    :limit => 1,                          :null => false
    t.string   "userhandle", :limit => 20
    t.string   "ipadd",      :limit => 15, :default => "OFF",      :null => false
    t.integer  "portsock",                 :default => 0
    t.integer  "porthttpd",                :default => 0
    t.integer  "longitude",                :default => 1810000000
    t.integer  "latitude",                 :default => 1810000000
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "resolvers", ["device", "devtype"], :name => "index_resolvers_on_device_and_devtype", :unique => true
  add_index "resolvers", ["latitude"], :name => "index_resolvers_on_latitude"
  add_index "resolvers", ["longitude"], :name => "index_resolvers_on_longitude"
  add_index "resolvers", ["userhandle"], :name => "index_resolvers_on_userhandle"

end