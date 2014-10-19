class DistributorsController < ApplicationController
  before_action :set_distributor, only: [:edit, :update, :show, :destroy]

  def index
    @distributors = Distributor.all
  end

  def new
    @distributor = Distributor.new
  end

  def create
    @distributor = Distributor.new(distributor_params)

    if @distributor.save
      redirect_to distributors_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @distributor.update(distributor_params)
      redirect_to distributors_path
    else
      render :edit
    end
  end

  def show
    @good = Good.find(params[:id])
  end

  def destroy
  end

  private

  def set_distributor
    @distributor = Distributor.find(params[:id])
  end

  def distributor_params
    params.require(:distributor).permit(:name, :description, good_ids: [])
  end
end