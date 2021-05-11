class TasksController < ApplicationController
  before_action :get_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show; end
  
  def new
    @task = Task.new
  end
  
  def create
    Task.create!(params_tasks)
    redirect_to tasks_path
  end
  
  def edit; end
  
  def update
    @task.update(params_tasks)
    redirect_to tasks_path
  end
  
  def destroy
    @task.destroy
    redirect_to tasks_path
  end
  
  private
  def get_task
    @task = Task.find(params[:id])
  end
  
  def params_tasks
     params.require(:task).permit(:title, :details, :completed)
  end
end
