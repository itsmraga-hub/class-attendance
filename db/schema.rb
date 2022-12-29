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

ActiveRecord::Schema[7.0].define(version: 2022_12_29_145554) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.text "name"
    t.text "code"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_staffs", force: :cascade do |t|
    t.bigint "departments_id", null: false
    t.bigint "staffs_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departments_id"], name: "index_department_staffs_on_departments_id"
    t.index ["staffs_id"], name: "index_department_staffs_on_staffs_id"
  end

  create_table "departments", force: :cascade do |t|
    t.text "name"
    t.bigint "courses_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_departments_on_courses_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.integer "national_id"
    t.text "staff_registration_number"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "courses_id", null: false
    t.bigint "students_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_student_courses_on_courses_id"
    t.index ["students_id"], name: "index_student_courses_on_students_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "national_id"
    t.text "registration_number"
    t.string "location"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "department_staffs", "departments", column: "departments_id"
  add_foreign_key "department_staffs", "staffs", column: "staffs_id"
  add_foreign_key "departments", "courses", column: "courses_id"
  add_foreign_key "student_courses", "courses", column: "courses_id"
  add_foreign_key "student_courses", "students", column: "students_id"
end
