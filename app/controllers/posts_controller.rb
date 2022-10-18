class PostsController < ApplicationController
  def index
    # @posts = Post.filter_posts(current_user)
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
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy
    flash.notice = "Post deleted!"
    redirect_back_or_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit, status: :unproceesable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
