class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:show, :index]

  def index
    @inventories = Inventory.order(:created_at).reverse
  end

  def new
    @inventory = Inventory.new
    @inventories = Inventory.order(:created_at).reverse
  end

  def create

    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to new_inventory_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @inventory.update(inventory_params)
      redirect_to new_inventory_path
    else
      render :edit
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to new_inventory_path
  end

  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:name, :amount, :email, :description, :unit, :price)
  end
end
