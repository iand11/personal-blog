class PostsController < ApplicationController

  def index
    @all_posts = Post.all
    @recent_posts = Post.all.order('created_at DESC').take(3)
  end


  def show
    @post = Post.find(params[:id])
    @all_posts = Post.all
    @recent_posts = Post.all.order('created_at DESC').take(3)
  end

end
