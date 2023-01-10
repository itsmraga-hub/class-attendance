class Subject < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :staff
  has_and_belongs_to_many :students
  has_and_belongs_to_many :presents
  has_and_belongs_to_many :absents
end
