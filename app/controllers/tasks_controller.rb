class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    # set_restaurant - Substituido pelo before_action
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_task
    raise
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
