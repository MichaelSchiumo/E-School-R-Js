class CreateEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :enrollments do |t|
      t.integer :course_id
      t.integer :user_id
      t.timestamps
    end
  end
end
