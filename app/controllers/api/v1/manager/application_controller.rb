class Api::V1::Manager::ApplicationController < Api::V1::ApplicationController
  before_action :manager?

  def manager?
    return render(json: { error: :unauthorized }, status: 401) unless @current_user.is_manager
  end
end
