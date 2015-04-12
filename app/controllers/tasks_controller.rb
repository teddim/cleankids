class TasksController < ApplicationController

  before_action :authenticate_user, only: [:new, :create]

  def index

    @community_tasks = Task.where(user_id: nil)
    @community_tasks = @community_tasks.order(:task_type)
    @user_tasks = Task.where(user_id: current_user.id)
    @chart = Chart.new
    @task = Task.new
    
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    flash[:notice] = "Thank you for creating a task!"
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:description, :task_type, :user_id, :times_used)

  end
end
