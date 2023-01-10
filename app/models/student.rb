class Student < ApplicationRecord
  belongs_to :department
  has_many :student_courses, dependent: :destroy
  has_many :courses, through: :student_courses
  has_many :subjects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
