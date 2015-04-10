class ChartsController < ApplicationController

  def index
    @chart = Chart.first
  end

  def new

  end

  def create
    charts_tasks = ChartsTasks.find params[:chart][:task_ids]
    @chart.tasks = charts_tasks
    binding.pry
    # @chart = Chart.new(chart_params)
    # @chart.user_id = current_user.id
    # if @chart.save
    flash[:notice]='User data was updated'
    redirect_to root_path
  #  else
    # redirect_to tasks_path
  #  end
    end

  private

  def chart_params
    params[:chart][:task_ids] ||= []
  end
end
