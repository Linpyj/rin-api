class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: {
      token: @user.token
    }
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
