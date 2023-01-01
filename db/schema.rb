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

ActiveRecord::Schema[7.0].define(version: 2023_01_01_215138) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.text "name"
    t.integer "admin_id"
    t.integer "national_id"
    t.integer "staff_id"
    t.text "role", default: "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.text "name"
    t.text "code"
    t.integer "duration"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "department_staffs", force: :cascade do |t|
    t.bigint "department_id"
    t.bigint "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_department_staffs_on_department_id"
    t.index ["staff_id"], name: "index_department_staffs_on_staff_id"
  end

  create_table "departments", force: :cascade do |t|
    t.text "name"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_departments_on_admin_id"
  end

  create_table "staff_courses", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_staff_courses_on_course_id"
    t.index ["staff_id"], name: "index_staff_courses_on_staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.integer "national_id"
    t.text "staff_registration_number"
    t.integer "phone_number"
    t.text "role", default: "staff"
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
    t.bigint "course_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "national_id"
    t.text "registration_number"
    t.string "location"
    t.integer "phone_number"
    t.text "role", default: "student"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["department_id"], name: "index_students_on_department_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  add_foreign_key "staff_courses", "courses"
  add_foreign_key "staff_courses", "staffs"
end
