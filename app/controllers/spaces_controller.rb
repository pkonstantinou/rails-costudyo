class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :location, :price)
  end
end
