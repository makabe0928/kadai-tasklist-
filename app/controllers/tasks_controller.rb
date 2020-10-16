class TasksController < ApplicationController
def index
  @tasks=Task.all
end

def show
  @task = Task.find(params[:id])
end

def new
  @task=Task.new
end

  def create
    @task=Task.new(task_params)
    if @task.save
      flash[:success] = 'Taskが正常に作成されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Taskが作成されませんでした'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
 
end
