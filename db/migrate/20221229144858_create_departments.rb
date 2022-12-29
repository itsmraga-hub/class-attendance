class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.text :name
      t.references :courses, null:false, foreign_key: {to_table: :courses}

      t.timestamps
    end
  end
end
