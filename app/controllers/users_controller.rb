class UsersController < ApplicationController
    def index
      users = User.all
      render json: UserSerializer.new(users)
    end

    def create
        user = User.find_or_create_by(username: params[:username])
        user.scores.build(number: params[:number])
        user.save
        render json: UserSerializer.new(user)
    end
  
    def show
      user = User.find_by(id: params[:id])
      render json: UserSerializer.new(user)
    end
  
  end