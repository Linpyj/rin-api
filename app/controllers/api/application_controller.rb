class Api::ApplicationController < ApplicationController
  include ActionController::Helpers
  helper_method :current_user
  before_action :login_required

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def login_required
    render json: {
        error: "Please loginnnnnnnnn!",
        status: 405
      }
  end
end
