class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.new(service_params)
    if @service.save
      redirect_to my_services_path
    else
      render :new
    end
  end

  def edit
  end

  def update
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

