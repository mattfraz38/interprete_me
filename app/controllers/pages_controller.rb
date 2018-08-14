class PagesController < ApplicationController
  def home
    @services = Service.all
  end

  def larry
    @services = Service.all
  end

end
