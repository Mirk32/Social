class PostsController < ApplicationController
  before_action :check_post_author, only: %i[edit]
  before_action :check_user, only: %i[new create edit]
  before_action :find_news, only: %i[index news]
  def index
    @posts = Post.all.regular_posts.order(:created_at).reverse
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params.merge(rating: 3))
    @post.post_type = 'Post' unless post_params[:post_type]
    if @post.save
      flash[:success] = 'Даннi збережено успiшно!'
      redirect_to posts_path
    else
      flash[:danger] = 'Даннi не збережено! - ' + @post.errors.full_messages.to_s
      render :new
    end
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      flash[:success] = 'Даннi збережено успiшно!'
    else
      flash[:danger] = 'Даннi не збережено! - ' + @post.errors.full_messages.to_s
    end
    redirect_to my_posts_path
  end

  def my_posts
    @posts = current_user.posts
  end

  def edit; end

  def show
    @post = Post.find(params[:id]).decorate
    @comments = @post.comments.order(:created_at).reverse
  end

  def news; end

  private

  def find_news
    @news = Post.news.order(:created_at).reverse
  end

  def post_params
    params.require(:post).permit(:title, :content, :post_type, images: [], files: [])
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
