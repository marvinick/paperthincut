class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path(@orders)
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      AppMailer.order_confirmation(@order).deliver
      redirect_to orders_path
    else
      render :edit
    end
  end


  private

  def order_params
    params.require(:order).permit(:name, :quantity, :description)
  end
end