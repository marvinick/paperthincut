class ItemsController < ApplicationController
  include CurrentBasket
  before_action :set_basket, only: [:create]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :current_sucker, except: [:index, :show]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    good = Good.find(params[:good_id])
    @item = @basket.add_good(good.id)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item.basket, notice: 'Product has been added' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    redirect_to items
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:good_id)
    end
end
