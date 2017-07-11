class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])          # GET /tasks/:id
  end

  def new           # GET /tasks/new
    @task = Task.new
  end

  def create        # POST /tasks
    @task = Task.create(task_params)

    redirect_to tasks_path(@task)
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
  end

  def destroy       # DELETE /tasks/:id
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
