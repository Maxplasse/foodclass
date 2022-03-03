class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = policy_scope(Post).order(posted_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @course = Course.find(params[:course_id])
    @post = Post.find(post_params)
    @post.course = @course

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
