class PostsController < ApplicationController
  def index
    @posts = Post.all.order created_at: :desc
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create title: params[:post][:title], content: params[:post][:content], user: current_user
    if @post.valid?
      redirect_to @post
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
end
