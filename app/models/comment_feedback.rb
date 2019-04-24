class CommentFeedback < ApplicationRecord
    belongs_to :discussion_forum
    belongs_to :user
end
