# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admins = Admin.create([
  {
    name: 'William Raga',
    email: 'raga@admin.com',
    admin_id: 232116025,
    staff_id: 232116025,
    national_id: 34113497,
    phone_number: 795600499,
    password: '12345678',
    password_confirmation: '12345678',
  },
  {
    name: 'Esther Raga',
    email: 'esther@admin.com',
    admin_id: 232116025,
    staff_id: 232116025,
    national_id: 34113497,
    phone_number: 795895409,
    password: 'password',
    password_confirmation: 'password',
  },
])

staff = Staff.create([
  {
    name: 'Raga',
    email: 'raga@staff.com',
    national_id: 34113498,
    staff_registration_number: 100001,
    phone_number: 795600499,
    password: 'password',
    password_confirmation: 'password',
  },
])

departments = Department.create([
  {
    admin: admins[0],
    name: 'Department of Mathematics',
  },
  {
    admin: admins[1],
    name: 'Department of Computer Science',
  },
])

# students = Student.create([
#   {
#     name: 'Esther Raga',
#     email: 'raga@user.com',
#     registration_number: 232116025,
#     phone_number: 795895409,
#     national_id: 34113497,
#     password: 'password',
#     password_confirmation: 'password',
#     department: departments[0],
#   },
# ])

# courses = Course.create([
#   {
#     name: 'Basic Mathematics',
#     code: 'SMA 101',
#     duration: '8 wks',
#     department: departments[0],
#   },
#   {
#     name: 'CALCULUS',
#     code: 'SMA 202',
#     duration: '8 wks',
#     department: departments[0],
#   },
#   {
#     name: 'HTML/CSS Basics',
#     code: 'WEB 101',
#     duration: '8 wks',
#     department: departments[1],
#   },
#   {
#     name: 'JavaScript',
#     code: 'WEB 202',
#     duration: '8 wks',
#     department: departments[1],
#   },
# ])
