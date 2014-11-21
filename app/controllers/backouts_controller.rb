class BackoutsController < ApplicationController

  def index
    @backouts = Backout.all
  end

  def new
    @backout = Backout.new
  end

  def create
    @backout = Backout.new(backout_params)
    if @backout.save
      redirect_to backouts_path
    else
      render :new
    end
  end

  def show
    @backout = Backout.find(params[:id])
  end

  def edit
    @backout = Backout.find(params[:id])
  end

  def create
    @backout = Backout.find(params[:id])
    if @backout.update(backout_params)
      redirect_to backouts_path
    else
      render :edit
    end
  end

  private

  def backout_params
    params.require(:backout).permit(:name, :month, :unit, :amount)
  end
end