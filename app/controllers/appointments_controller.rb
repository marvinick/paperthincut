class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :destroy, :edit, :update]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def show

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    param.require(:appointment).permit(:chef, :costumer)
  end
end