class BackoutsController < ApplicationController
  before_action :set_backout, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]

  def index
    @backouts = Backout.all
  end

  def new
    @backout = Backout.new
  end

  def create
    @backout = Backout.new(backout_params)
    if params [:email_button] || !@backout.save
      render :new
    else
      redirect_to backouts_path
    end
  end

  def show; end

  def edit; end

  def update
    if @backout.update(backout_params)
      redirect_to backouts_path
    else
      render :edit
    end
  end

  def destroy
    @backout = Backout.find(params[:id])
    @backout.destroy
    redirect_to backouts_path
  end


  private

  def set_backout
    @backout = Backout.find(params[:id])
  end

  def backout_params
    params.require(:backout).permit(:name, :month, :unit, :item1, :item2, :item3, :item4, :item6, :item7, :item8, :item9, :item10, :amount1, :amount2, :amount3, :amount4, :amount5, :amount6, :amount7, :amount8, :amount9, :amount10)
  end
end