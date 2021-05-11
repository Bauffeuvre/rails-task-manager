class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    
  end
  
  def create
    
  end
  
  private

  def params_tasks

  end

end
