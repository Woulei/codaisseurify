class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@song.artist), notice: "Song deleted."
  end
end
