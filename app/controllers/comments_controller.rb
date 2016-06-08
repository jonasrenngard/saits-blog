class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.valid?
      redirect_to :back
    else
      render "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge user: current_user
  end
end
