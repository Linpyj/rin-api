class Api::V1::UsersController < Api::V1::ApplicationController

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    render json: {
        user: @user,
        token: @user.token
    }
  end


end
