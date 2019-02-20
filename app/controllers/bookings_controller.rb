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
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   if @booking.save
  #     redirect_to booking_path(@booking)
  #   else
  #     render :new
  #   end
  # end

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
    redirect_to bookings_path
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
