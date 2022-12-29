class Department < ApplicationRecord
  has_many :courses
  has_many :students
  has_many :department_staffs, dependent: :destroy
  has_many :staffs, through: :department_staffs
end
