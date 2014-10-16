class GoodsController < ApplicationController
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
    @good = Good.find(params[:id])
  end

  def update
    @good = Good.find(params[:id])
    if @good.update(goods_params)
      redirect_to good_path
    else
      render :edit
    end
  end

  def show
    @good = Good.find(params[:id])
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    respond_to do |format|
      format.html { redirect_to goods_url }
      format.json { head :no_content }
    end
  end

  private

  def goods_params
    params.require(:good).permit(:name, :description, :price, :amount, :cost)
  end
end