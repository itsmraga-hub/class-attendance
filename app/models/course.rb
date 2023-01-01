class Course < ApplicationRecord
  belongs_to :department
  belongs_to :staff
  has_many :student_courses, dependent: :destroy
  has_many :students, :through => :student_courses
end
