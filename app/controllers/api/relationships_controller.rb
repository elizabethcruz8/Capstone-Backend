class Api::RelationshipsController < ApplicationController
  def index
    @relationships = Relationship.all

    render "index.json.jbuilder"
  end 

  def show 
    @relationship = Relationship.find_by(id: params[:id])
    render "show.json.jbuilder"
  end 

  def create 
    @relationship = Relationship.find_or_create_by(
      follower_id: current_user.id, 
      leader_id: params[:leader_id],
      )
    @relationship.save
    render "show.json.jbuilder"
  end 

  def destroy
    @relationship = Relationship.find_by(id: params[:id])

    @relationship.destroy 
    render json: {message:"Successfully Unfollowed!"}
  end 
end
