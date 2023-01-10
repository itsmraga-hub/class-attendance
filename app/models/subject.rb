class Subject < ApplicationRecord
  belongs_to :course
  belongs_to :staff
  belongs_to :student
  has_many :presents
  has_many :absents
end
