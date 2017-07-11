class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    #set_task

  end

  def new           # GET /tasks/new
    @task = Task.new
  end

  def create        # POST /tasks
    @task = Task.create(task_params)

    redirect_to task_path(@task)
  end

  def edit          # GET /tasks/:id/edit
    #set_task
  end

  def update        # PATCH /tasks/:id
    #set_task
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy       # DELETE /tasks/:id
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
