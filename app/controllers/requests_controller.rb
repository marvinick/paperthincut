class RequestsController < ApplicationController

  def index
  end

  def new
    @request = Request.new
  end

  def create
    @create = Request.new(request_params)

    if @request.save
      redirect_to distributors_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def request_params
    params.require(:request).permit(:name, :email)
  end

end