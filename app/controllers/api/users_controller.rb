class Api::UsersController < Api::ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    render json: {
        user: @user,
        token: @user.token
    }
  end

end
