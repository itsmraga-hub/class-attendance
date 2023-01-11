class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.text :name
      t.integer :admin_id
      t.integer :national_id
      t.integer :phone_number
      t.integer :staff_id
      t.text :role, default: 'admin'

      t.timestamps
    end
  end
end
