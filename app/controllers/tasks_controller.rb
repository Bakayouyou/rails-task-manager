class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@tasks), status: :see_other
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # raise
    @task = Task.find(params[:id])
    # @task.update(task_params)
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit_task
    end
  end

  def show
    @task = Task.find(params[:id])
    # raise
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
