class UsersController < ApplicationController

  def show
    @user = User.includes(:services).find(params[:id])

  end
end
