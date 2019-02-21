class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create]

  def index
    # @services = Service.all
    if params[:query].present?
      sql_query = " \
        services.name @@ :query \
        OR services.description @@ :query \
        OR services.category @@ :query \
        OR services.city @@ :query \
      "
      @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end


  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
    @user = User.find(current_user.id)
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = User.find(current_user.id).id
    if @service.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
    @user = User.find(current_user.id)
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to user_path(current_user.id)
  end

  def service_params
    params.require(:service).permit(:name, :description, :price, :address, :category, :city)
  end
end
