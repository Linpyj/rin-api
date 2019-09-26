class Api::TasksController < Api::ApplicationController
  def index
    @task = Task.all
    render json: @task
  end

  def show
    @task = Task.find_by(id: params[:id])
    render json: @task
  end

  def create
    @task = Task.new(task_params)
    @task.save
    render json: @task
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:content, :detail)
  end
end
