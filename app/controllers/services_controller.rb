class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @services = Service.all

  end

  # def show
  #   @service = Service.find(1)
  # end

  # def new
  #   @service = Service.new
  # end

  # def create
  #   @service = Service.new(service_params)
  #   @service.save
  #   redirect_to services_path
  # end



  # def service_params
  #   params.require(:service).permit(:name, :photo)
  # end
end
