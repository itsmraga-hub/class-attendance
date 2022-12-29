class Course < ApplicationRecord
  belongs_to :departments
  belongs_to :staffs
  has_many :student_courses, dependent: :destroy
  has_many :students, through: :student_courses
end
