class PostsController < ApplicationController
  layout "posts"
  def show
    @post = Post.find(params[:id])
  end
end
