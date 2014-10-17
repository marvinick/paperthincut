class DistributorsController < ApplicationController
  def index
    @distributors = Distributor.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def distributor_params
    params.require(:distributor).permit(:name, :description)
  end
end