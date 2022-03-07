class UpvotesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @upvote = Upvote.new
    @upvote.post = @post
    @upvote.user = current_user
    authorize @upvote

    @upvote.save
    redirect_to posts_path
  end
end
