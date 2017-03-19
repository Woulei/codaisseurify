class ArtistsController < ApplicationController

  def index
    @artists = Artists.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    @artist.save ? redirect_to @artist : render 'new'
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(artist_params) ? redirect_to @artist : render 'edit'
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path, notice: "Artist deleted."
  end

  private
    params.require(:artist).permit(:name, :describtion, :country)
end
