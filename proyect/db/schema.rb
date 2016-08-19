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

ActiveRecord::Schema.define(version: 20160819152210) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "visitsCount"
    t.integer  "User_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "class_x_students", force: :cascade do |t|
    t.integer  "class_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "classroomType"
    t.integer  "classroomNumber"
    t.integer  "capacity"
    t.integer  "uva_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "article_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "document"
    t.string   "name"
    t.string   "lastname"
    t.integer  "phone"
    t.date     "birthDate"
    t.string   "email"
    t.string   "position"
    t.integer  "uva_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "reference"
    t.string   "productType"
    t.string   "brand"
    t.string   "quantity"
    t.date     "purchaseDate"
    t.string   "warranty"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "teacher"
    t.string   "purpose"
    t.date     "initialdate"
    t.date     "finalDate"
    t.integer  "quota"
    t.integer  "classroomNumber"
    t.integer  "students_id"
    t.integer  "classroom_id"
    t.integer  "teacher_id"
    t.text     "observations"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "document"
    t.integer  "inventory_id"
    t.text     "observations"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "document"
    t.string   "names"
    t.string   "lastname"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "document"
    t.string   "name"
    t.string   "lastname"
    t.integer  "phone"
    t.string   "email"
    t.string   "class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_blogs", force: :cascade do |t|
    t.integer  "document"
    t.string   "name"
    t.string   "lastname"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uvas", force: :cascade do |t|
    t.string   "nameUva"
    t.string   "address"
    t.string   "commune"
    t.integer  "phone"
    t.string   "manager"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
