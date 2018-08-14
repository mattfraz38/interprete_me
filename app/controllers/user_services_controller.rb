class UserServicesController < ApplicationController
  def index
    @user_services = current_user.services if current_user
  end
end
