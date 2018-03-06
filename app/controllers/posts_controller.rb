class PostsController < ApplicationController
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

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, images: [], files: [])
  end
end
