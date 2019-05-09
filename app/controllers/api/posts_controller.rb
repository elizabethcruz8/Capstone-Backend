class Api::PostsController < ApplicationController
 
  def create 
    photo_url = params[:photo] && params[:photo] != "" ? Cloudinary::Uploader.upload(params[:photo])["secure_url"] : ""
    video_url = params[:video] && params[:video] != "" ? Cloudinary::Uploader.upload(params[:video])["secure_url"] : ""
    @post = Post.new(
      title: params[:title],
      text: params[:text], 
      photo: photo_url,
      video: video_url,
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