class Admin::PostsController < Admin::ApplicationController
  def index

     if params[:search].present?
    @posts = Post.where("title LIKE ? OR content LIKE ?","%#{params[:search]}%","%#{params[:search]}%")
    else
    @posts = Post.all.order(id: :desc)
  end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
