class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @all_posts = Post.all
  end

end
