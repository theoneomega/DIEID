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

ActiveRecord::Schema.define(:version => 20131008165251) do

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.integer  "interior_number", :precision => 38, :scale => 0
    t.string   "colony"
    t.string   "locality"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "analysts", :force => true do |t|
    t.string   "analyst"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "crimes", :force => true do |t|
    t.string   "crime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "criminal_drugs", :force => true do |t|
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.integer  "drug_id",           :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "criminal_groups", :force => true do |t|
    t.text     "description"
    t.integer  "vehicle_id",  :precision => 38, :scale => 0
    t.integer  "weapon_id",   :precision => 38, :scale => 0
    t.integer  "drug_id",     :precision => 38, :scale => 0
    t.integer  "area_id",     :precision => 38, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "criminal_vehicles", :force => true do |t|
    t.integer  "vehicle_id",        :precision => 38, :scale => 0
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "criminal_weapons", :force => true do |t|
    t.integer  "weapon_id",         :precision => 38, :scale => 0
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "drugs", :force => true do |t|
    t.string   "kind"
    t.integer  "quantity",     :precision => 38, :scale => 0
    t.text     "observations"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "event_drugs", :force => true do |t|
    t.integer  "event_id",   :precision => 38, :scale => 0
    t.integer  "drug_id",    :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "event_people", :force => true do |t|
    t.integer  "event_id",   :precision => 38, :scale => 0
    t.integer  "person_id",  :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "event_vehicles", :force => true do |t|
    t.integer  "event_id",   :precision => 38, :scale => 0
    t.integer  "vehicle_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "event_weapons", :force => true do |t|
    t.integer  "event_id",   :precision => 38, :scale => 0
    t.integer  "weapon_id",  :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "priority_id",     :precision => 38, :scale => 0
    t.datetime "event_date"
    t.text     "description"
    t.string   "street"
    t.string   "interior_number"
    t.string   "suburb"
    t.string   "locality"
    t.boolean  "victims",         :precision => 1,  :scale => 0
    t.boolean  "detained",        :precision => 1,  :scale => 0
    t.boolean  "suspects",        :precision => 1,  :scale => 0
    t.integer  "person_id",       :precision => 38, :scale => 0
    t.boolean  "vehicles",        :precision => 1,  :scale => 0
    t.integer  "vehicle_id",      :precision => 38, :scale => 0
    t.boolean  "drugs",           :precision => 1,  :scale => 0
    t.string   "drug_id"
    t.boolean  "weapons",         :precision => 1,  :scale => 0
    t.integer  "weapon_id",       :precision => 38, :scale => 0
    t.text     "observations"
    t.string   "backup_file"
    t.string   "source"
    t.integer  "area_id",         :precision => 38, :scale => 0
    t.integer  "crime_id",        :precision => 38, :scale => 0
    t.integer  "township_id",     :precision => 38, :scale => 0
    t.integer  "locality_id",     :precision => 38, :scale => 0
    t.integer  "place_id",        :precision => 38, :scale => 0
    t.integer  "analyst_id",      :precision => 38, :scale => 0
    t.integer  "status_id",       :precision => 38, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "events_collections", :force => true do |t|
    t.integer  "priority_id",     :precision => 38, :scale => 0
    t.datetime "event_date"
    t.text     "description"
    t.string   "street"
    t.string   "interior_number"
    t.string   "suburb"
    t.string   "locality"
    t.integer  "person_id",       :precision => 38, :scale => 0
    t.integer  "vehicle_id",      :precision => 38, :scale => 0
    t.integer  "drug_id",         :precision => 38, :scale => 0
    t.integer  "weapon_id",       :precision => 38, :scale => 0
    t.text     "observations"
    t.string   "backup_file"
    t.string   "source"
    t.integer  "area_id",         :precision => 38, :scale => 0
    t.integer  "crime_id",        :precision => 38, :scale => 0
    t.integer  "township_id",     :precision => 38, :scale => 0
    t.integer  "locality_id",     :precision => 38, :scale => 0
    t.integer  "place_id",        :precision => 38, :scale => 0
    t.integer  "analyst_id",      :precision => 38, :scale => 0
    t.integer  "status_id",       :precision => 38, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "localities", :force => true do |t|
    t.integer  "township_id", :precision => 38, :scale => 0
    t.string   "locality"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "ci"
    t.string   "first_name"
    t.string   "last_name1"
    t.string   "last_name2"
    t.string   "alias"
    t.datetime "birth_date"
    t.string   "originative"
    t.string   "genre"
    t.boolean  "record",       :precision => 1,  :scale => 0
    t.string   "profession"
    t.text     "observations"
    t.integer  "status_id",    :precision => 38, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "priorities", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.boolean  "protected",     :precision => 1, :scale => 0
    t.boolean  "super_admin",   :precision => 1, :scale => 0
    t.boolean  "analyst",       :precision => 1, :scale => 0
    t.boolean  "administrator", :precision => 1, :scale => 0
    t.boolean  "supervisor",    :precision => 1, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.boolean  "medios",        :precision => 1, :scale => 0
  end

  create_table "statuses", :force => true do |t|
    t.string   "description"
    t.string   "status_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "detail"
  end

  create_table "townships", :force => true do |t|
    t.string   "township"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.integer  "analyst_id",             :precision => 38, :scale => 0
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
    t.string   "email",                                                 :default => "", :null => false
    t.string   "encrypted_password",                                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :precision => 38, :scale => 0, :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "role_id",                :precision => 38, :scale => 0
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "i_users_reset_password_token", :unique => true

  create_table "vehicles", :force => true do |t|
    t.string   "brand"
    t.string   "line"
    t.integer  "model",         :precision => 38, :scale => 0
    t.string   "plate"
    t.string   "serial_number"
    t.string   "color"
    t.boolean  "stolen",        :precision => 1,  :scale => 0
    t.string   "status"
    t.text     "details"
    t.integer  "person_id",     :precision => 38, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "weapon_types", :force => true do |t|
    t.string   "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "weapons", :force => true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "serial_number"
    t.string   "weapon"
    t.string   "caliber"
    t.integer  "person_id",      :precision => 38, :scale => 0
    t.integer  "weapon_type_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end
