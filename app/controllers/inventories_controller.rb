class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:show, :index]

  def index
    @inventories = Inventory.order(:created_at)
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
      redirect_to inventories_path
    else
      render :new
    end
  end

  def show
    @inventories = Inventory.all
  end

  def edit

  end

  def update
    if @inventory.update(inventory_params)
      redirect_to inventories_path
    else
      render :edit
    end
  end

  def destroy
    @inventory.destroy
    redirect_to inventories_path
  end

  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:name, :amount, :description, :unit, :price, :month)
  end
end
