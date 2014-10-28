class RequestsController < ApplicationController
  include CurrentBasket
  before_action :set_basket, only: [:new, :create]

  def index
    @requests = Request.all
  end

  def new
    if @basket.items.empty?
      redirect_to distributors_path, notice: "The Basket is empty"
      return
    end

    @request = Request.new
  end

  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        AppMailer.request_deliver(@request).deliver
        Basket.destroy(session[:basket_id])
        session[:basket_id] = nil

        format.html { redirect_to distributors_path, notice: "You've placed the order" }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def request_params
    params.require(:request).permit(:name, :email)
  end

end