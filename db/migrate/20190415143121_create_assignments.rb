class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.integer :course_id
      t.integer :user_id
      t.timestamps
    end
  end
end
