class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @course = Course.find(params[:course_id])
    @post = Post.find(post_params)
    @post.course = @course

    if posts.save
      redirect_to post_path(@product)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :participant_id, :course_id)
  end
end
