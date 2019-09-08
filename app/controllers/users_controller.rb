class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user.token
  end

  private

  def user_params
    params.require(:).permit(:email, :password)
  end
end
