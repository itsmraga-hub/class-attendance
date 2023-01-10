class CreateJoinTableSubjectPresent < ActiveRecord::Migration[7.0]
  def change
    create_join_table :subjects, :presents do |t|
      # t.index [:subject_id, :present_id]
      # t.index [:present_id, :subject_id]
    end
  end
end
