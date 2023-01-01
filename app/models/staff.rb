class Staff < ApplicationRecord
  has_many :department_staffs, dependent: :destroy
  has_many :departments, :through => :department_staffs
  has_many :staff_courses, dependent: :destroy
  has_many :courses, :through => :staff_courses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
