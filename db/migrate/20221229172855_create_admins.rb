class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.name :text
      t.admin_id :integer
      t.national_id :integer
      t.staff_id :integer
      t.role :text, default: 'admin'

      t.timestamps
    end
  end
end
