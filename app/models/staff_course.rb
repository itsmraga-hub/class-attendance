class StaffCourse < ApplicationRecord
  belongs_to :staff
  belongs_to :course
end
