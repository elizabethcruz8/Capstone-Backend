class Api::MessagesController < ApplicationController

  def index
    @messages = Message.all
    @users = User.all
    render "index.json.jbuilder"
  end 

  def create
    @message = Message.new(
      body: params[:body],
      user_id: current_user.id,
      author_id: current_user.id
    )
    
    if @message.save

      ActionCable.server.broadcast "messages_channel", {
        type: "text",
        author: current_user.id,
        data: {
          text: @message.body
        }
      }

      render "show.json.jbuilder"
    else
      render json: {errors: @message.errors.full_messages}, status: 422
    end
  end 
end
