class HomeController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save

    #@post.content.to_s.split.size
    
    redirect_to "/home/dashboard"

  end

  def destroy
    @posta = Post.find(params[:post_id])
    @posta.destroy

    redirect_to "/home/dashboard"

  end

  def edit
    @edit = Post.find(params[:post_id])
  end

  def update
    update = Post.find(params[:post_id])
    update.title = params[:edit_title]
    update.content = params[:edit_content]
    update.save

    redirect_to "/home/index"
  end

  def dashboard
    @posts = Post.all

    @count = params['orig']
  end

end
