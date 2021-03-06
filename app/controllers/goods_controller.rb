class GoodsController < ApplicationController
  before_action :set_good, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_sucker!, except: [:index, :show]

  def index
    @goods = Good.order(:name)
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(goods_params)

    if @good.save
      redirect_to goods_path
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @good.update(goods_params)
      redirect_to good_path
    else
      render :edit
    end
  end

  def show; end

  def destroy
    @good.destroy
    redirect_to goods_path
  end

  private

  def set_good
    @good = Good.find(params[:id])
  end

  def goods_params
    params.require(:good).permit(:name, :description, :price, :unit, :quantity, :cost, distributor_ids: [])
  end
end