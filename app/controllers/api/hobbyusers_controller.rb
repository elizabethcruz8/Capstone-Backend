class Api::HobbyusersController < ApplicationController
  def index 
    @hobbyusers = HobbyUser.all 

    render "index.json.jbuilder"
  end 
end
