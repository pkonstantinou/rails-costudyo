class SpacesController < ApplicationController
  def index
  end

  def show
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :location, :price)
  end
end
