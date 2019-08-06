class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @photo = Photo.new(params[:photo_params])
    @photo.captions.create(caption_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  private 

  def photo_params 
    params.require(:caption).permit(:message, :picture)
  end
end

