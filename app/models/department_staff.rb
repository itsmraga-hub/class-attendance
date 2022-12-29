class DepartmentStaff < ApplicationRecord
  belongs_to :departments
  belongs_to :staffs
end
