class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:edit, :update, :show]

  def index
    @inventories = Inventory.order(:created_at).reverse
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
    @goods = Good.all
  end

  def edit; end

  def update
    if @inventory.update(inventory_params)
      redirect_to inventories_path
    else
      render :edit
    end
  end



  private

  def set_inventory
    @inventory = Inventory.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:name, :amount, :description, :unit)
  end
end
