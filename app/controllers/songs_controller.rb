class SongsController < ApplicationController

  def new
    @song = Song.new
    @artist = params
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]

    if @song.save
      redirect_to artist_path(params[:artist_id])
    else
      render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@song.artist), notice: "Song deleted."
  end

  private
    def song_params
      params.require(:song).permit(:name, :album, :release_date, :artist_id)
    end

end
