class UsersController < ApplicationController

  def show
    @user = User.includes(:services).find(params[:id])
  end

  def edit

  end
end
