class UsersController < ApplicationController

  def show
    @user = User.includes(:services).find(params[:id])
    authorize @user
  end

  def edit

  end

