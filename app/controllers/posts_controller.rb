class PostsController < ApplicationController
  def index
  	if params[:tag]
  		@posts = Post.filter_by_tags(params[:tag]).page(params[:page])
  		 else
  	@posts =Post.where(publish: true).order(id: :desc).page(params[:page])
 
end
end

  def show
  	@post = Post.find(params[:id])
  end
end
