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

ActiveRecord::Schema.define(version: 20140622145830) do

  create_table "assignments", force: true do |t|
    t.string   "title"
    t.datetime "assign_date"
    t.datetime "due_date"
    t.string   "description"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["teacher_id"], name: "index_assignments_on_teacher_id"

  create_table "assignments_users", id: false, force: true do |t|
    t.integer  "assignment_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments_users", ["assignment_id"], name: "index_assignments_users_on_assignment_id"
  add_index "assignments_users", ["user_id"], name: "index_assignments_users_on_user_id"

  create_table "completed_assignments", force: true do |t|
    t.string   "submit"
    t.datetime "completion_date"
    t.boolean  "complete"
    t.integer  "user_id"
    t.integer  "assignment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "completed_assignments", ["assignment_id"], name: "index_completed_assignments_on_assignment_id"
  add_index "completed_assignments", ["user_id"], name: "index_completed_assignments_on_user_id"

  create_table "teachers", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers_users", id: false, force: true do |t|
    t.integer  "teacher_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers_users", ["teacher_id"], name: "index_teachers_users_on_teacher_id"
  add_index "teachers_users", ["user_id"], name: "index_teachers_users_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
