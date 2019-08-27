class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    #@place.photos.create(photo_params)
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
    # can I use merge to connect Place_Id?
  end

  private 

  def photo_params 
    params.require(:photos).permit(:picture, :place, :caption)
    # .permit(:caption) this code gives a Name error (unintitialized constant Photo)
  end
end

