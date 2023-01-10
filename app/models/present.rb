class Present < ApplicationRecord
  belongs_to :student
  belongs_to :subject
end
