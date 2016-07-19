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

<<<<<<< HEAD
  def appointments_params
=======
  def user_params
>>>>>>> 5bdca36ffd0b9475c0a8539ca041914f981ae0e6
  	params.require(:appointment).permit(:day, :hour)
  end
end
