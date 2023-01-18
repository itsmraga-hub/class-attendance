class Student < ApplicationRecord
  belongs_to :department
  has_many :student_courses, dependent: :destroy
  has_many :courses, through: :student_courses
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :presents
  has_and_belongs_to_many :absents
  has_one_attached :image, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  def self.search(search)
    if search
      student = Student.find_by(name: search)
      if student
        self.where(student_id: student)
      else
        Student.all
      end
    else
      Student.all
    end
  end
end
