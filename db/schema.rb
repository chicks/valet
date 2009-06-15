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

ActiveRecord::Schema.define(:version => 20090614173907) do

  create_table "asset_assignments", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "asset_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "type"
    t.string   "make"
    t.string   "model"
    t.integer  "purchase_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
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

  create_table "titles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unique_identifiers", :force => true do |t|
    t.integer  "asset_id"
    t.string   "type"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
