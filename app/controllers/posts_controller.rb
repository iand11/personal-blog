class PostsController < ApplicationController

  def index
    @home = true
    @all_posts = Post.all.order('created_at ASC')
    @recent_posts = Post.all.order('created_at DESC').take(3)
  end


  def show
    @show = true
    @post = Post.find(params[:id])
    @all_posts = Post.all.order('created_at ASC')
    @recent_posts = Post.all.order('created_at DESC').take(3)
  end

  def create
    @post = Post.new(post_params)
    @post.pic_number = rand(0..1084)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end 
  end

  def new
    if logged_in?
      @post = Post.new
    else
      redirect_to root_path
    end 
  end

  def edit
    if logged_in?
      @post = Post.find(params[:id])
    else
      redirect_to root_path
    end 
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :body))
      redirect_to root_path
    else
      render "edit"
    end 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy 
    redirect_to root_path
  end




  private
    def post_params
      params.require(:post).permit(:title, :body, :pic_number)
    end
end
