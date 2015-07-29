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

ActiveRecord::Schema.define(version: 20150729032035) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "table_actions", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.integer  "created_by", limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by", limit: 4
    t.string   "active",     limit: 255
  end

  create_table "table_assignments", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "project_id",  limit: 4
    t.date     "start_at"
    t.date     "end_at"
    t.boolean  "is_parrover", limit: 1
    t.datetime "created_at"
    t.integer  "created_by",  limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",  limit: 4
    t.string   "active",      limit: 255
  end

  create_table "table_day_types", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.integer  "company_id",  limit: 4
    t.string   "description", limit: 255
    t.time     "start_at"
    t.time     "end_at"
    t.float    "hours",       limit: 24
    t.boolean  "is_holiday",  limit: 1
    t.float    "rate",        limit: 24
    t.datetime "created_at"
    t.integer  "created_by",  limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",  limit: 4
    t.string   "active",      limit: 255
  end

  create_table "table_holiday_and_special_days", force: :cascade do |t|
    t.string   "code",          limit: 255
    t.string   "name",          limit: 255
    t.integer  "day_type",      limit: 4
    t.boolean  "is_static_day", limit: 1
    t.date     "day"
    t.string   "description",   limit: 255
    t.datetime "created_at"
    t.integer  "created_by",    limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",    limit: 4
    t.string   "active",        limit: 255
  end

  create_table "table_projects", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.integer  "company_id",  limit: 4
    t.integer  "status",      limit: 4
    t.date     "start_at"
    t.date     "end_at"
    t.string   "description", limit: 255
    t.datetime "created_at"
    t.integer  "created_by",  limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",  limit: 4
    t.string   "active",      limit: 255
  end

  create_table "table_timesheet_details", force: :cascade do |t|
    t.integer  "timesheet_id",         limit: 4
    t.integer  "day_type_id",          limit: 4
    t.time     "start_at"
    t.time     "end_at"
    t.integer  "small_leave",          limit: 4
    t.integer  "recovery_small_leave", limit: 4
    t.integer  "regular_time",         limit: 4
    t.integer  "overtime",             limit: 4
    t.integer  "midnight",             limit: 4
    t.datetime "created_at"
    t.integer  "created_by",           limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",           limit: 4
    t.string   "active",               limit: 255
  end

  create_table "table_timesheets", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "project_id",   limit: 4
    t.date     "report_month"
    t.integer  "status",       limit: 4
    t.datetime "created_at"
    t.integer  "created_by",   limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",   limit: 4
    t.string   "active",       limit: 255
  end

  create_table "tables", force: :cascade do |t|
    t.string   "timesheet_history", limit: 255
    t.integer  "timesheet_id",      limit: 4
    t.integer  "actor_id",          limit: 4
    t.integer  "action_id",         limit: 4
    t.datetime "action_at"
    t.text     "message",           limit: 65535
    t.datetime "created_at"
    t.integer  "created_by",        limit: 4
    t.datetime "updated_at"
    t.integer  "updated_by",        limit: 4
    t.string   "active",            limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "company_id",    limit: 4
    t.string   "name",          limit: 100
    t.integer  "is_accountant", limit: 4
    t.string   "email",         limit: 100
    t.string   "user_name",     limit: 100
    t.string   "password",      limit: 100
    t.integer  "salt",          limit: 4
    t.integer  "is_admin",      limit: 4
    t.datetime "create_at"
    t.integer  "create_by",     limit: 4
    t.datetime "update_at"
    t.integer  "update_by",     limit: 4
    t.integer  "active",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
