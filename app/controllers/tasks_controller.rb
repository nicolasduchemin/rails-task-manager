class TasksController < ApplicationController
  # before_action = :find_task, only: [:show,  :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    find_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(task_params)
    redirect_to tasks_path(@tasks)
  end

  def edit
    find_task
  end

  def update
    find_task
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    find_task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end