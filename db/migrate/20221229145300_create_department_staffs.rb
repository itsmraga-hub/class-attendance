class CreateDepartmentStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :department_staffs do |t|
      t.references :departments, null:false, foreign_key: true
      t.references :staffs, null:false, foreign_key: true

      t.timestamps
    end
  end
end
