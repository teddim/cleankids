class ChartsController < ApplicationController

  def index
    @chart = Chart.first
    @chart2 = Chart.find(4)
    @chart3 = Chart.find(5)

  end

  def new

  end

  def create
    chart = Chart.new()
    chart.user_id = current_user.id
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
    params[:chart][:task_ids] ||= []
  end
end
