class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.belongs_to :course, null: false, foreign_key: true
      t.belongs_to :staff, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
