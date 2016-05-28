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

ActiveRecord::Schema.define(:version => 20130810005038) do

  create_table "bookings", :force => true do |t|
    t.integer  "car_id",      :null => false
    t.integer  "user_id",     :null => false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "destination"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cars", :force => true do |t|
    t.string   "title",                                      :null => false
    t.text     "description"
    t.decimal  "price",       :precision => 10, :scale => 0, :null => false
    t.string   "color",                                      :null => false
    t.string   "body_type",                                  :null => false
    t.string   "make",                                       :null => false
    t.string   "model",                                      :null => false
    t.string   "model_year",                                 :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "car_id",     :null => false
    t.text     "body",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["car_id"], :name => "index_comments_on_car_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username",                               :null => false
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.string   "address",                                :null => false
    t.string   "license_number",                         :null => false
    t.string   "phone_number"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
