class DepartmentStaff < ApplicationRecord
  belongs_to :department
  belongs_to :staff
  # belongs_to :department, class_name: 'Department'
  # belongs_to :staff, class_name: 'Staff'
end
