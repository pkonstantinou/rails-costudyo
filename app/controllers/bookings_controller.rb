class BookingsController < ApplicationController
  def confirm
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    space = Space.find(params[:space_id])
    @booking.space = space
    @booking.user = current_user

    if @booking.save
      redirect_to booking_confirmation_path(@booking)
    else
      render 'spaces/show'
    end
  end

  private

  def booking_params
    dates = params[:booking][:starting_date].split(' to ')
    params[:booking][:starting_date] = dates[0]
    params[:booking][:ending_date] = dates[1]
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
