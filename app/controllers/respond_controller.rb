class RespondController < ApplicationController
  def create
    @respond = Respond.new(respond_params)

    if @respond.save
      redirect_to backout_path(@backout)
    else
      render :new
    end
  end

  private

  def respond_params
    params.require(:respond).permit(:body)
  end
end