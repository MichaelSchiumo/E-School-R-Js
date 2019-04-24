class CreateCommentFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_feedbacks do |t|
      t.integer :discussion_forum_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
