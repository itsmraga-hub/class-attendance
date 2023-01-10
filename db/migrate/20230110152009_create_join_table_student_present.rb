class CreateJoinTableStudentPresent < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :presents do |t|
      # t.index [:student_id, :present_id]
      # t.index [:present_id, :student_id]
    end
  end
end
