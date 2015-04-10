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

ActiveRecord::Schema.define(version: 20150410014126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charts_tasks", id: false, force: :cascade do |t|
    t.integer "chart_id"
    t.integer "task_id"
  end

  add_index "charts_tasks", ["chart_id"], name: "index_charts_tasks_on_chart_id", using: :btree
  add_index "charts_tasks", ["task_id"], name: "index_charts_tasks_on_task_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "description"
    t.string   "task_type"
    t.integer  "user_id"
    t.integer  "times_used",  default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
