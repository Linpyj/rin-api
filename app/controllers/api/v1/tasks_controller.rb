class Api::V1::TasksController < Api::V1::ApplicationController

  def index
    @tasks = Task.where(user_id: @current_user.id)
    render json: @tasks
  end

  def show
  end

  def create
    @task = @current_user.tasks.create(content: params[:content], detail: params[:detail])
    @task.save
    render json: @task
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
  end

end
