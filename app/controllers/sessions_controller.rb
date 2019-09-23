class SessionsController < ApplicationController
  skip_before_action :login_required

  def login
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      render json: {
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
