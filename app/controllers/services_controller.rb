class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @servives = Service.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    service = Service.new(service.params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new

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

  def set_services
    @service = Service.find(params[:id])
  end
end

