class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.save
    redirect_to tips_path
  end

  def show
    @tip = Tip.find(params[:id])
  end

  private

  def tip_params
    params.require(:tip).permit(:month, :week)
  end
end