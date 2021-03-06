class Api::V1::SessionsController < Api::V1::ApplicationController
  skip_before_action :authenticate

  def login
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: {
        user: @user,
        token: @user.token
      }
    else
      render status: 401
    end
  end

  def logout
    reset_session
  end

end
