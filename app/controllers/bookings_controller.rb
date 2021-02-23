class BookingsController < ApplicationController
  def confirm
  end

  def create
    @booking = Booking.new(params[:booking])
    if success
      redirect_to confirm_page
    else
      render 'spaces/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
