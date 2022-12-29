class CreateStudentCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_courses do |t|
      t.references :courses, null:false, foreign_key: true
      t.references :students, null:false, foreign_key: true

      t.timestamps
    end
  end
end
