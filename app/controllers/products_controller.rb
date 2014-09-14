class ProductsController < ApplicationController

  def index
    @products = Product.order(:name)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to vendors_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to members_url }
      format.json { head :no_content }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :image_url, :price, vendor_ids: [])
  end
end
