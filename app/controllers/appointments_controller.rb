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
      render :new
    end
  end

  def edit

  end

  def destroy
    @appointment = Appointment.find(params[:id])
    service = @appointment.service
    @appointment.destroy

    redirect_to user_path(@user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_day, :end_day)
  end

  # def set_appointment
  #   @service = Service.find(params[:service_id])
  # end
end
