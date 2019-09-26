class Api::TasksController < Api::ApplicationController

  def index
    @tasks = @current_user.tasks
    render json: @tasks
  end

  def show
  end

  def create
    @task = @current_user.tasks.create(content: params[:content], detail: params[:detail], user_id: @current_user.id)
    @task.save
    render json: @task
  end

  private

  def task_params
    params.require(:task).permit(:content, :detail)
  end
end
