class Api::PostsController < ApplicationController
 
  def create 
    response = Cloudinary::Uploader.upload(params[:photo])
    cloudinary_url = response["secure_url"]
    @post = Post.new(
      title: params[:title],
      text: params[:text], 
      photo: cloudinary_url,
      video: cloudinary_url,
      user_id: current_user.id
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