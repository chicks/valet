# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090626235218) do

  create_table "asset_assignments", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "asset_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asset_profiles", :force => true do |t|
    t.string   "name"
    t.text     "preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asset_unique_identifiers", :force => true do |t|
    t.integer  "asset_id"
    t.string   "type"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "type"
    t.string   "make"
    t.string   "model"
    t.string   "created_by"
    t.string   "updated_by"
    t.integer  "purchase_order_id"
    t.integer  "profile_id",        :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_histories", :force => true do |t|
    t.integer  "employee_id"
    t.text     "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_titles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "legal_name"
    t.integer  "status_id"
    t.integer  "department_id"
    t.integer  "title_id"
    t.integer  "manager_id"
    t.integer  "office_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "remote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
    t.integer  "employee_id"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
