class Api::UsersController < ApplicationController
  def create
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]

    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      date_of_birth: params[:date_of_birth],
      state: params[:state],
      city: params[:city],
      image: cloudinary_url,
      Gamer_Tag: params[:Gamer_Tag]
      )

    if @user.save
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

  def update
    response = Cloudinary::Uploader.upload(params[:image])
    cloudinary_url = response["secure_url"]

    @user = User.find_by(id: params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.date_of_birth = params[:date_of_birth] || @user.date_of_birth
    @user.state = params[:state] || @user.state
    @user.city = params[:city] || @user.city
    @user.image = cloudinary_url || @user.image
    if @user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
