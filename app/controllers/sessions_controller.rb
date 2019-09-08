class SessionsController < ApplicationController
  # def login
  #
  # end
  #
  #   user = User.find_by(email: params[:session][:email])
  #   # パスワードの一致を検証
  #   if user && user.authenticate(params[:session][:password])
  #     session[:user_id] = user.id
  #     render json: @current_user
  #
  #     user = User.find_by(email: params[:session][:email])
  #     if user && user.authenticate(params[:session][:password])
  #   else
  #     render json:
  #   end


  def login
    @user = User.find_by(email: params[:email])
    return render status: 401 unless @user
    if @user.authenticate(params[:password])
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



  def logout
  end
end
