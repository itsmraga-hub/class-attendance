class Course < ApplicationRecord
  belongs_to :department
  has_many :staff_courses, dependent: :destroy
  has_many :staff, through: :staff_courses
  has_many :student_courses, dependent: :destroy
  has_many :students, through: :student_courses
end
