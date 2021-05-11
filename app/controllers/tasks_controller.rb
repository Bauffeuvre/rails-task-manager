class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    get_task
  end
  
  def new
    @task = Task.new
  end
  
  def create
    Task.create!(params_tasks)
    redirect_to tasks_path
  end
  
  def edit
    get_task
  end
  
  def update
    get_task
    @task.update(params_tasks)  
    redirect_to tasks_path
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  private
  
  def get_task
    @task = Task.find(params[:id])
  end
  

  def params_tasks
     params.require(:task).permit(:title, :details)
  end

end
