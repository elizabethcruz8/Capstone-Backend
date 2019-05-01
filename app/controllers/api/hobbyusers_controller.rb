class Api::HobbyusersController < ApplicationController
  def index 
    @hobbyusers = HobbyUser.all 

    render "index.json.jbuilder"
  end 

  def create 
    @hobbyuser = HobbyUser.find_or_create_by(
      hobby_id: params[:hobby_id],
      user_id: current_user.id
      )
    if @hobbyuser.save 
      render "show.json.jbuilder"
    else
      render json: {errors: @hobbyuser.errors.full_messages}, status: 422
    end
  end
end
