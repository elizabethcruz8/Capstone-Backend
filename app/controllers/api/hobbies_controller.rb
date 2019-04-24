class Api::HobbiesController < ApplicationController
  def create 
    @hobby = Hobby.new(
      name: params[:name],
      )

    @hobby.save
    render "show.json.jbuilder"
  end

  def destroy
    @hobby = Hobby.find_by(id: params[:id])

    @hobby.destroy 
    render json: {message:"Hobby succesfully deleted!"}
  end 
end
