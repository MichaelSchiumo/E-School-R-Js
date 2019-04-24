class DiscussionForum < ApplicationRecord
    has_many :comment_feedbacks
    has_many :user, through: :comment_feedbacks
end
