class AppointmentsController < ApplicationController

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

  private

  def appointment_params
    params.require(:appointment).permit(:start_day, :end_day)
  end
end
