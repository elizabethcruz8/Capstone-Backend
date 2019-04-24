class Api::PostsController < ApplicationController
  def create 
    @post = Post.new(
      title: params[:title],
      text: params[:text], 
      photo: params[:photo],
      video: params[:video],
      user_id: params[:user_id]
      )
    @post.save 
    render "show.json.jbuilder"
  end

  def destroy 
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: {message: "Post succesfully deleted!"} 
  end
end 