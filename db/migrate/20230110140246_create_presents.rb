class CreatePresents < ActiveRecord::Migration[7.0]
  def change
    create_table :presents do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :subject, null: false, foreign_key: true
      t.date :subject_date

      t.timestamps
    end
  end
end
