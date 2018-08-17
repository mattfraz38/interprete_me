class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    skip_policy_scope

    if params[:location].present? || params[:title].present? #check if all are present
      # @services = Service.global_search(params[:query])
      # @services = Service.location_search(params[:location]) if params[:location].present?
      # params[:title].present? && params[:location].present? ? @services = @services.title_desc_search(params[:title]) : @services = Service.title_desc_search(params[:title])
      if params[:location].present?
        @services = Service.location_search(params[:location])
        @services = @services.title_desc_search(params[:title]) if params[:title].present?
      else
        @services = Service.title_desc_search(params[:title])
      end
    else
      @services = Service.all
    end
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
      flash[:create] = "Experience has been Created!"
    else
      render :new
    end
  end

  def edit
    authorize @service
  end

  def update
    @service.update(service_params)
    authorize @service
    redirect_to user_path(current_user)
  end

  def destroy
    @service.destroy
    redirect_to user_path(current_user)
  end

  private

  def service_params
    params.require(:service).permit(:days, :description, :price, :location, :language,:category, :title, :photo, :photo_cache)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
