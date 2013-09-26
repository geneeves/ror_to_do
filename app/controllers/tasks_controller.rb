class TasksController < ApplicationController
  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = 'Your new task was created.'
      redirect_to "/lists/#{@task.list_id}"
    else
      render '/lists/show'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      flash[:notice] = "Task edited."
      redirect_to "/lists/#{@task.list_id}"
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Your task has been deleted"
      redirect_to "/lists/#{@task.list_id}"
  end
end
