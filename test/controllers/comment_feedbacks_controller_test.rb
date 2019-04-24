require 'test_helper'

class CommentFeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_feedback = comment_feedbacks(:one)
  end

  test "should get index" do
    get comment_feedbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_feedback_url
    assert_response :success
  end

  test "should create comment_feedback" do
    assert_difference('CommentFeedback.count') do
      post comment_feedbacks_url, params: { comment_feedback: { body: @comment_feedback.body, discussion_forum_id: @comment_feedback.discussion_forum_id } }
    end

    assert_redirected_to comment_feedback_url(CommentFeedback.last)
  end

  test "should show comment_feedback" do
    get comment_feedback_url(@comment_feedback)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_feedback_url(@comment_feedback)
    assert_response :success
  end

  test "should update comment_feedback" do
    patch comment_feedback_url(@comment_feedback), params: { comment_feedback: { body: @comment_feedback.body, discussion_forum_id: @comment_feedback.discussion_forum_id } }
    assert_redirected_to comment_feedback_url(@comment_feedback)
  end

  test "should destroy comment_feedback" do
    assert_difference('CommentFeedback.count', -1) do
      delete comment_feedback_url(@comment_feedback)
    end

    assert_redirected_to comment_feedbacks_url
  end
end
