class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]

  def index
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)

    if @log.save
      redirect_to logs_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @log.update(log_params)
      redirect_to logs_path
    else
      render :edit
    end
  end

  def destroy
    @log.destroy
    redirect_to logs_path
  end

  private

  def set_log
    @log = Log.find(params[:id])
  end

  def log_params
    params.require(:log).permit(:description, :event)
  end
end
