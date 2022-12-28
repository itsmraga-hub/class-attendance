class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :national_id
      t.text :staff_registration_number
      t.integer :phone_number

      t.timestamps
    end
  end
end
