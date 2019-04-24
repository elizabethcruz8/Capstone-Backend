class Api::CommentsController < ApplicationController
  def create 
    @comment = Comment.new(
      text: params[:text], 
      post_id: params[:post_id],
      user_id: params[:user_id] #current.user_id
      )
    @comment.save 
    render "show.json.jbuilder"
  end

  def destroy 
    @comment = Comment.find_by(id: params[:id])
    
    @comment.destroy
    render json: {message: "Comment succesfully deleted!"} 
  end
end
