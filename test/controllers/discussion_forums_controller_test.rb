require 'test_helper'

class DiscussionForumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discussion_forum = discussion_forums(:one)
  end

  test "should get index" do
    get discussion_forums_url
    assert_response :success
  end

  test "should get new" do
    get new_discussion_forum_url
    assert_response :success
  end

  test "should create discussion_forum" do
    assert_difference('DiscussionForum.count') do
      post discussion_forums_url, params: { discussion_forum: { body: @discussion_forum.body, title: @discussion_forum.title } }
    end

    assert_redirected_to discussion_forum_url(DiscussionForum.last)
  end

  test "should show discussion_forum" do
    get discussion_forum_url(@discussion_forum)
    assert_response :success
  end

  test "should get edit" do
    get edit_discussion_forum_url(@discussion_forum)
    assert_response :success
  end

  test "should update discussion_forum" do
    patch discussion_forum_url(@discussion_forum), params: { discussion_forum: { body: @discussion_forum.body, title: @discussion_forum.title } }
    assert_redirected_to discussion_forum_url(@discussion_forum)
  end

  test "should destroy discussion_forum" do
    assert_difference('DiscussionForum.count', -1) do
      delete discussion_forum_url(@discussion_forum)
    end

    assert_redirected_to discussion_forums_url
  end
end
