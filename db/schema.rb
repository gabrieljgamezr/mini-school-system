# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_03_021634) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_lessons", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.string "lastname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "class_lesson_id", null: false
    t.index ["class_lesson_id"], name: "index_students_on_class_lesson_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.string "lastname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "class_lesson_id", null: false
    t.index ["class_lesson_id"], name: "index_teachers_on_class_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "students", "class_lessons"
  add_foreign_key "teachers", "class_lessons"
end
