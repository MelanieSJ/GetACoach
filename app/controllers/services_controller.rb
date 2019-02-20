class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to dashboard_path
  end

  def service_params
    params.require(:service).permit(:name, :user.name, :description, :address, :category)
  end
end
