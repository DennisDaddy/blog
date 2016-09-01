class Admin::CommentsController < Admin::ApplicationController
  def index
    if params[:search].present?
      @comments = Comment.joins(:visitor).where("fullname LIKE ? OR message LIKE ?", "#{params[:search]}%", "#{params[:search]}%").page params[:page]
  	@comments = Comment.where(status: to_bool(params[:status])).page params[:page]
  end
 
  def update
  	@comment = Comment.find(params[:id])
  	if @Comment.update(status: params[:status])
  	redirect_to :back, notice: 'successfully updated Comment'
  else
  	redirect_to :back, notice: 'There was a problem updating comment'
  	end
  end
 
  def destroy
  	@comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to :back, notice: 'comment was successfully deleted'
  end
  end
end
