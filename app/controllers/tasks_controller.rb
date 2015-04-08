class TasksController < ApplicationController

  def index

    @community_tasks = Task.where(user_id: nil)
    @community_tasks = @community_tasks.order(:task_type)
    @user_tasks = Task.where(user_id: 1)

  end

  def new

  end

end
