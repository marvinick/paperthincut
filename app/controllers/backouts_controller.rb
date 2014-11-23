class BackoutsController < ApplicationController
  before_action :set_backout, only: [:create, :show, :edit, :update, :destroy]

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

  def show; end

  def edit; end

  def create
    if @backout.update(backout_params)
      redirect_to backouts_path
    else
      render :edit
    end
  end

  private

  def set_backout
    @backout = Backout.find(params[:id])
  end

  def backout_params
    params.require(:backout).permit(:name, :month, :unit, :amount)
  end
end