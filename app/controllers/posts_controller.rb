class PostsController < ApplicationController
  layout false
  def show
    @post = Post.find(params[:id])
  end
end
