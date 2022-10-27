class PostsController < ApplicationController
  before_action :own_post, only: [:edit, :update, :destroy]
  before_action :set_post, only: [:edit, :update, :destroy, :show]

  def index
    @posts = Post.all.order(id: :desc)
    @new_post = Post.new
    @notifs = current_user.recieved_friend_requests
    @comment = current_user.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash.notice = 'New post created!'
      redirect_back_or_to root_path
    else
      flash.alert = "You can't submit an empty post!"
      redirect_back_or_to root_path, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @post.destroy
    flash.notice = "Post deleted!"
    redirect_back_or_to root_path
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_back_or_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:body, :photo)
  end

  def own_post
    redirect_to root_path unless current_user == Post.find(params[:id]).user
  end
end
