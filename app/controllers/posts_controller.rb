class PostsController < ApplicationController

  def index
    @all_posts = Post.all
  end


  def show
    @post = Post.find(params[:id])
    @all_posts = Post.all
  end

end
