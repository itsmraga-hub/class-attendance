class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.text :name
      t.text :code
      t.integer :duration

      t.timestamps
    end
  end
end
