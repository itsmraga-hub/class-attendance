class Course < ApplicationRecord
  belongs_to :department, class_name: 'Department'
  belongs_to :staff, class_name: 'Staff'
  has_many :student_courses, dependent: :destroy
  has_many :students, through: :student_courses
end
