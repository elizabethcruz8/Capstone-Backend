class Api::CommentsController < ApplicationController
  def create 
    @comment = Comment.new(
      text: params[:text], 
      post_id: params[:post_id],
      user_id: current_user.id
      )
    if @comment.save 
      render "show.json.jbuilder"
    else
      render json: {errors: @comment.errors.full_messages}, status: 422
    end
  end

  def destroy 
    @comment = Comment.find_by(id: params[:id])
    
    @comment.destroy
    render json: {message: "Comment succesfully deleted!"} 
  end
end
