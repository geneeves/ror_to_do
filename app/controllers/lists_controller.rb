class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @task = Task.new(:list_id => params[:id])
  end

  def create
    @list = List.create(params[:list])
    redirect_to '/lists'
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(params[:list])
      flash[:notice] = "List edited."
      redirect_to '/lists'
    else
      render :edit
    end
  end

  def destroy 
    @list = List.find(params[:id])
    @list.destroy
    flash[:notice] = "Your list has been deleted."
    redirect_to '/lists'
  end
end