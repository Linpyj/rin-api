class Api::TasksController < Api::ApplicationController

  def index
    @tasks = Task.where(user_id: @current_user.id)
    render json: @tasks
  end

  #
  # def index
  #   salaries = Salary.where(user_id: @current_user.id)
  #   if params[:year]
  #     salaries = salaries.where(year: params[:year])
  #   else
  #     salaries = salaries.where(year: Time.now.year)
  #   end
  #   render json: salaries
  # end

  def show
  end

  def create
    @task = @current_user.tasks.create(content: params[:content], detail: params[:detail], user_id: @current_user.id)
    @task.save
    render json: @task
  end

end
