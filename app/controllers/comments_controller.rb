class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    @child_comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.author_id = current_user.id
    @comment.save
    redirect_to post_url(@comment.post_id)
  end

  def create_child
    @child_comment = Comment.new(params[:comment])
    ancestry = @child_comment.comment_ancestries.new
    ancestry.parent_id = params[:parent_id]

    @child_comment.save
    ancestry.save
  end
end
