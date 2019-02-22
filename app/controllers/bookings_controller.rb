class BookingsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home

  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new

  @booking = Booking.new



  end

  def edit
    @booking = Booking.find(params[:id])
    @user = current_user
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path(current_user)
  end

  def create
    @service = Service.find(params[:booking][:service_id].to_i)
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = @user
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end

  # def update
  #   respond_to do |format|
  #     if @booking.update(booking_params)
  #       redirect_to booking_path(@booking)
  #     else
  #       render :edit
  #     end
  #   end
  # end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :service_id, :user_id)
  end
end
