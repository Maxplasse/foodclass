class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.user = current_user
    @comment.post = @post
    authorize @comment
    # raise
    if @comment.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
