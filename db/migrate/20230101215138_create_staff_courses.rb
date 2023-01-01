class CreateStaffCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :staff_courses do |t|
      t.belongs_to :staff, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
