class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]

  def index
    @calendars = Calendar.all
    @inventories = Inventories.all
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendars_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @calendar.update(calendar_params)
      redirect_to calendars_path
    else
      render :edit
    end
  end

  def destroy
    @calendar.destroy
  end

  private

  def calendar_params
    params.require(:calendar).permit(:month)
  end

  def set_calendar
    @calendar = Calendar.find(params[:id])
  end
end