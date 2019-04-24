class Api::UsersController < ApplicationController
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      date_of_birth: params[:date_of_birth],
      state: params[:state],
      city: params[:city]
      )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])

    user_hobbies = @user.hobbies
    render "show.json.jbuilder"
  end

  def show_current_user
    @user = current_user
    render "show.json.jbuilder"
  end
end
