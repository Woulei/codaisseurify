class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(params[:id])
    @artist = photo.artist
    photo.destroy

    redirect_to edit_artist_path(@artist), notice: "Photo successfully removed"
  end
end
