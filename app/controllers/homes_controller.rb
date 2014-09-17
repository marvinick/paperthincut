class HomesController < ApplicationController
  def show
    @visits = Visit.all
    @vendor = Vendor.new
  end
end
