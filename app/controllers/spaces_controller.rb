class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new

    # Prepare the marker for the map
    @space.geocoded? && @marker = { lat: @space.latitude, lng: @space.longitude }
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user

    if @space.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.photos.purge if @space.photos.attached?
    @space.destroy

    redirect_to dashboard_path
  end

  private

  def space_params
    params.require(:space).permit(:title, :description, :location, :price, photos: [])
  end
end
