class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.captions.create(caption_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private 

   def photo 
   end


  def photo_params 
    params.require(:caption)
  end
end

