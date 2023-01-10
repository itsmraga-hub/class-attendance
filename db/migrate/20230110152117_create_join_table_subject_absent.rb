class CreateJoinTableSubjectAbsent < ActiveRecord::Migration[7.0]
  def change
    create_join_table :subjects, :absents do |t|
      # t.index [:subject_id, :absent_id]
      # t.index [:absent_id, :subject_id]
    end
  end
end
