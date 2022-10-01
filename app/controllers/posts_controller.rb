class PostsController < ApplicationController
  def index
    # @posts = Post.filter_posts(current_user).order(id: :desc)
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

  def destroy
    @post = Post.find(params[:post_id])

    @post.destroy
    flash.notice = "Post destroyed"
    redirect_back_or_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
