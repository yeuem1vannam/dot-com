class PostsController < ApplicationController
  impressionist actions: [:show]

  def show
    @post = Post.find(params[:id])
  end
end
