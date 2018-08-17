class AppointmentsController < ApplicationController
  # before_action :set_appointment, only: [ :create, :edit, :update, :destroy]

  def create
    @service = Service.find(params[:service_id])
    @user = current_user
    @appointment = Appointment.new(appointment_params)
    @appointment.user = @user
    @appointment.service = @service
    if @appointment.valid?
      @appointment.save
      redirect_to user_path(@user)
    else
      @appointment = Appointment.new
      redirect_to service_path(@service)
    end
  end

  def edit
    @service = Service.find(params[:service_id])
    @appointment = Appointment.find(params[:id])
  end

  def update
    @service = Service.find(params[:service_id])
    @appointment = Appointment.find(params[:id])
    @appointment[:confirmed] = true
    @appointment.save
    redirect_to user_path(current_user)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    service = @appointment.service
    @appointment.destroy

    redirect_to user_path(current_user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_day, :end_day, :confirmed)
  end

  # def set_appointment
  #   @service = Service.find(params[:service_id])
  # end
end
