class EmojisController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @emoji = Emoji.new
    @emoji.post = @post
    @emoji.user = current_user
    authorize @emoji

    @emoji.save
    redirect_to posts_path
  end
end
