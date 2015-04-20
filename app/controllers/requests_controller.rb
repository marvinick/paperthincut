class RequestsController < ApplicationController
  include CurrentBasket
  before_action :set_basket, only: [:new, :create]
  before_action :authenticate_sucker!, except: [:show, :index]

  def index
    @requests = Request.order(:created_at).reverse
  end

  def new
    if @basket.items.empty?
      redirect_to distributors_path, notice: "The Basket is empty"
      return
    end

    @request = Request.new
    @distributors = Distributor.all
  end

  def create

    @request = Request.new(request_params)
    @request.add_items_from_basket(@basket)

      if @request.save
        Basket.destroy(session[:basket_id])
        session[:basket_id] = nil
        AppMailer.request_deliver(@request).deliver
        redirect_to distributors_path
      else
        render :new
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
    @request = Request.find(params[:id])
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url }
      format.json { head :no_content }
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :additional, :good_id, distributor_ids: [])
  end

end