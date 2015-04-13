class ChartsController < ApplicationController

  # before_action :authenticate_user, only: [:new, :show]


  def index
    @charts = Chart.where(user_id: current_user.id)

  end

  def show
    @chart = Chart.find(params[:id])
    @morning_tasks = @chart.tasks.where(task_type: "morning routine")
    @evening_tasks = @chart.tasks.where(task_type: "evening routine")
    @hourly_tasks = @chart.tasks.where(task_type: "household chores")

  end

  def new

  end

  def create
    chart = Chart.new()
    chart.user_id = current_user.id
    chart.name = params[:chart][:name]
    chart.tasks = []
    tasks_array = params[:chart][:task_ids]
    tasks_array.each do |task|
      chart.tasks << Task.find(task)
    end
    chart.save
    # if @chart.save
    flash[:notice]='User data was updated'
    redirect_to charts_path
  #  else
    # redirect_to tasks_path
  #  end
    end

  private

  def chart_params
    require.params(:chart).permit(:name)
    params[:chart][:task_ids] ||= []
  end
end
