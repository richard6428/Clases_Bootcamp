class AppointmentsController < ApplicationController
  def index
  	@appointments=Appointments.all
  end

  def new
  	@appointment=Appointment.new
  end

  def edit
  	@appointment=Appointment.find(params[:id])
  end

  def create
  	@appointment=Appointment.new(appointment_params)
  	@appointment.save
  	redirect_to appointment_path
  end

  def distroy
  	@appointment=Appointment.find(params[:id])
  	@appointment.destroy
  	redirect_to appointments_path
  end

  def update
  	@appointment=Appointment.find(params[:id])
  	@appointment.update(appointment_params)
  	redirect_to appointments_path
  end

  def appointments_params
  	params.require(:appointment).permit(:day, :hour)
  end
end
