class TasksController < ApplicationController

  before_action :authenticate_user, only: [:new]

  def index

    @community_tasks = Task.where(user_id: nil)
    @community_tasks = @community_tasks.order(:task_type)
    @user_tasks = Task.where(user_id: 1)

  end

  def new
    @task = Task.new
  end

end
