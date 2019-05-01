class Api::HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
    if params[:new]
      @hobbies = @hobbies.select { |hobby| !current_user.hobbies.include? hobby }
    end
    render "index.json.jbuilder"
  end

  def create 
    @hobby = Hobby.new(
      name: params[:name],
      )
    if @hobby.save
      hobby_user = HobbyUser.create(user_id: current_user.id, hobby_id: @hobby.id)
    end

    render "show.json.jbuilder"
  end

  def show
    @hobby = Hobby.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def destroy
    @hobby = Hobby.find_by(id: params[:id])

    @hobby.destroy
    HobbyUser.where(hobby_id: @hobby.id).destroy_all
    render json: {message:"Hobby succesfully deleted!"}
  end 
end
