class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private


  def post_params
    params.require(:post).permit(:title , :content , :img_path , :user_id)
  end
end
