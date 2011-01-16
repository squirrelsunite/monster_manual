class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end
  def new
    @origin = Origin.new
  end
  def create
    @origin = Origin.new params[:origin]
    if @origin.save
      redirect_to origins_path, :notice => "Origin successfully created."
    else
      render :action => "new"
    end
  end
  def edit
    @origin = Origin.find params[:id]
  end
  def show
    @origin = Origin.find params[:id]
  end
  def destroy
    @origin = Origin.find params[:id]
    @origin.destroy
    redirect_to origins_path, :notice => "Origin deleted."
  end
  def update
    @origin = Origin.find params[:id]
    @origin.attributes = params[:origin]
    if @origin.save
      redirect_to origins_path, :notice => "Origin successfully updated."
    else
      render :action => "edit"
    end
  end
end