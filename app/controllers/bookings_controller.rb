class BookingsController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
  end

  def dashboard
  end

def booking_params
  params.require(:booking).permit(:date)
end
end
