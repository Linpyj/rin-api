class Api::V1::ApplicationController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate

  def authenticate
    authenticate_token || render(json: { error: :unauthorized }, status: 401)
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      @current_user = User.find_by(token: token)
      !!@current_user
    end
  end

end
