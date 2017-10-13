class BookingsController < ApplicationController
  before_action :authenticate_user!
    def create
      @booking = current_user.bookings.new(booking_params.merge(event_id: params[:event_id]))
      @booking.set_total_price
      @booking.save
      redirect_to @booking.event, notice: "Thank you for your reservation!"
    end

    private

    def booking_params
      params.require(:booking).permit(:price)
    end
  end
