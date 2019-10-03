class Api::V1::Manager::UsersController < Api::V1::Manager::ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end
end
