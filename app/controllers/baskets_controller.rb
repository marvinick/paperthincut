class BasketsController < ApplicationController
  before_action :set_basket, only: [:show, :edit, :update, :destroy]
  before_action :require_user
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_basket

  def index
    @baskets = Basket.all
  end

  def show; end

  def new
    @basket = Basket.new
  end

  def edit; end

  def create
    @basket = Basket.new(basket_params)

    respond_to do |format|
      if @basket.save
        format.html { redirect_to @basket, notice: 'Basket was successfully created.' }
        format.json { render action: 'show', status: :created, location: @basket }
      else
        format.html { render action: 'new' }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @basket.update(basket_params)
        format.html { redirect_to @basket, notice: 'Basket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @basket.destroy if @basket.id == session[:basket_id]
    session[:basket_id] = nil
    respond_to do |format|
      format.html { redirect_to basket_url, notice: 'The Basket is now empty' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket
      @basket = Basket.find(params[:id])
    end

    def basket_params
      params[:basket]
    end

    def invalid_basket
      logger.error "Attempt to access invalid basket #{params[:id]}"
      redirect_to root_path, notice: 'Invalid basket'
    end
end
