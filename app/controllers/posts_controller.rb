class PostsController < ApplicationController
  before_action :check_post_author, only: %i[edit]
  before_action :check_user, only: %i[new create edit]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params.merge(rating: 3))
    if @post.save
      flash[:success] = 'Даннi збережено успiшно!'
      redirect_to posts_path
    else
      flash[:danger] = 'Даннi не збережено! - ' + @post.errors.full_messages.to_s
      render :new
    end
  end

  def my_posts
    @posts = current_user.posts
  end

  def edit; end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, images: [], files: [])
  end

  def check_post_author
    @post = Post.find(params[:id])
    return if current_user == @post.user
    redirect_to posts_path
  end

  def check_user
    return if current_user
    redirect_to root_path
  end
end
