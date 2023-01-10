class CreateJoinTableStudentAbsent < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :absents do |t|
      # t.index [:student_id, :absent_id]
      # t.index [:absent_id, :student_id]
    end
  end
end
