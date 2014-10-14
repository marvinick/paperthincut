class GoodsController < ApplicationController

  def index
    @goods = Good.all
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
  end

  def show
  end

  def destroy
  end

  private

  def goods_params
    params.require(:good).permit(:name, :description, :price, :amount)
  end
end