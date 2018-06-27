class PostsController < ApplicationController
  def index
    @posts = Post
              .select(:description)
              .order(created_at: :desc)
              .limit(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to posts_path, notice: 'The post was successfully created'
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:description, :location)
    end
end