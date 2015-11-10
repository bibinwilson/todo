class TasksController < ApplicationController
  def new
  	@task = Task.new

  end

  def show

  	@tasks = Task.all
  	
  end

  def edit

  end

  def create_task

  @task = Task.new(task_params)

  @task.user_id = current_user.id

  @task.save

  redirect_to current_user

  end

  def delete
  end

  def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to current_user
  end

  def update
  end

  private 

    def task_params
      params.permit(:todo_item, :date)
    end

  

end
