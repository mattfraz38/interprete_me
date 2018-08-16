class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = policy_scope(Service)

  end

  def show
    @appointment = Appointment.new
    authorize @service
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    authorize @service
    @service.user = current_user
    if @service.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    authorize @service
  end

  def update
    authorize @service
  end

  def destroy
    @service.destroy

    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:description, :price, :location, :language,:category, :title)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
