class Api::SessionsController < Api::ApplicationController
  skip_before_action :authenticate

  def login
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      render json: {
        user: @user
      }
    else
      render status: 401
    end

  end

  def logout
    reset_session
  end

end
