class DiscussionForumsController < ApplicationController
  before_action :set_discussion_forum, only: [:show, :edit, :update, :destroy]

  # GET /discussion_forums
  def index
    @discussion_forums = DiscussionForum.all
  end

  # GET /discussion_forums/1
  def show
     @discussion_forum = DiscussionForum.find(params[:id])
     @comment_feedback = CommentFeedback.new( :discussion_forum => @discussion_forum )
  end

  # GET /discussion_forums/new
  def new
    @discussion_forum = DiscussionForum.new
  end

  # GET /discussion_forums/1/edit
  def edit
  end

  # POST /discussion_forums
  def create
    @discussion_forum = DiscussionForum.new(discussion_forum_params)

    if @discussion_forum.save
      redirect_to @discussion_forum, notice: 'Discussion forum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /discussion_forums/1
  def update
    if @discussion_forum.update(discussion_forum_params)
      redirect_to @discussion_forum, notice: 'Discussion forum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /discussion_forums/1
  def destroy
    @discussion_forum.destroy
    redirect_to discussion_forums_url, notice: 'Discussion forum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discussion_forum
      @discussion_forum = DiscussionForum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def discussion_forum_params
      params.require(:discussion_forum).permit(:title, :body)
    end
end
