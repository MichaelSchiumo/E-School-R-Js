class CommentFeedbacksController < ApplicationController
  before_action :set_comment_feedback, only: [:show, :edit, :update, :destroy]

  # GET /comment_feedbacks
  def index
    @comment_feedbacks = CommentFeedback.all
  end

  # GET /comment_feedbacks/1
  def show
  end

  # GET /comment_feedbacks/new
  def new
    @comment_feedback = CommentFeedback.new
  end

  # GET /comment_feedbacks/1/edit
  def edit
  end

  # POST /comment_feedbacks
  def create
    @comment_feedback = CommentFeedback.new(comment_feedback_params)

    if @comment_feedback.save
      redirect_to @comment_feedback, notice: 'Comment feedback was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comment_feedbacks/1
  def update
    if @comment_feedback.update(comment_feedback_params)
      redirect_to @comment_feedback, notice: 'Comment feedback was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /comment_feedbacks/1
  def destroy
    @comment_feedback.destroy
    redirect_to comment_feedbacks_url, notice: 'Comment feedback was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_feedback
      @comment_feedback = CommentFeedback.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_feedback_params
      params.require(:comment_feedback).permit(:discussion_forum_id, :body)
    end
end
