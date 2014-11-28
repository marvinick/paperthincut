class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:edit, :update, :show]
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

  def show
    @goods = Good.order(:name)
  end

  def edit
    @goods = Good.all
  end

  def update
    @goods = Good.all
    if @inventory.update(inventory_params)
      redirect_to new_inventory_path
    else
      render :edit
    end
  end



  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:name, :amount, :description, :unit, good_ids: [])
  end
end
