class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      # t.float :grade
      t.timestamps
    end
    

  end
end
