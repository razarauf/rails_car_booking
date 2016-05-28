class CommentsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @comment = Comment.all
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to @comment
  end
  
  def show
    url = "/bookings/comments"
    redirect_to url
  end
  
end
