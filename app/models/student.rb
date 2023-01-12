class Student < ApplicationRecord
  belongs_to :department
  has_many :student_courses, dependent: :destroy
  has_many :courses, through: :student_courses
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :presents
  has_and_belongs_to_many :absents
  has_one_attached :image, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
