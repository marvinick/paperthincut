class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      redirect_to vendors_path
    else
      render :new
    end
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name, :email)
  end
end