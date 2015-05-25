class RollsController < ApplicationController
  def index
    @rolls = Roll.all
  end

  def new
    @roll = Roll.new
  end

  def create
    @roll = Roll.new(roll_params)
    @roll.save
    redirect_to rolls_path
  end

  private

  def roll_params
    params.require(:roll).permit(:name, :flavor, :texture, :visual, :healthy)
  end
end