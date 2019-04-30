class CommentFeedbacksController < ApplicationController

    def create
        @discussion_forum = DiscussionForum.find(params[:discussion_forum_id])
        @comment_feedback = @discussion_forum.comment_feedbacks.create(params[:comment_feedback].permit(:body))
        redirect_to discussion_forum_path(@discussion_forum)
    end

    def destroy
        @discussion_forum = DiscussionForums.find(params[:discussion_forum_id])
        @comment_feedback = @discussion_forum.comment_feedbacks.find(params[:id])
        @comment_feedback.destroy
        redirect_to discussion_forum_path(@post)
    end
end
