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
    @relationship = Relationship.new(
      follower_id: params[:follower_id], 
      leader_id: params[:leader_id],
      )

    @relationship.save 
    render "show.json.jbuilder"
  end 

  def destroy
    @relationship = Relationship.find_by(id: params[:id])

    @relationship.destroy 
    render json: {message:"Relationship succesfully deleted!"}
  end 
end
