class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc)
    @post = Post.new
    @notifs = current_user.recieved_friend_requests
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
