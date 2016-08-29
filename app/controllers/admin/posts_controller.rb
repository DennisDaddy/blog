class Admin::PostsController < Admin::ApplicationController
  def index

     if params[:search].present?
    @posts = Post.matching_title_or_content(params[:search])
    else
    @posts = Post.all.order(id: :desc)
  end
  end

  def new
    @post = Post.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
     @post = Post.find(params[:id])

  end

  def destroy
  end
end
