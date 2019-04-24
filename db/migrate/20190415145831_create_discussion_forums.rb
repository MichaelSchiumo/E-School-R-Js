class CreateDiscussionForums < ActiveRecord::Migration[5.0]
  def change
    create_table :discussion_forums do |t|
      t.string :title
      t.text :body
      t.integer :course_id
      t.integer :user_id
      t.timestamps
    end
  end
end
