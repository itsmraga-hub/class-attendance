class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :national_id
      t.text :registration_number
      t.string :location
      t.integer :phone_number

      t.timestamps
    end
  end
end
