class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
    @photos = @artist.photos
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      image_params.each do |image|
        @artist.photos.create(image: image)
      end

      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @photos = @artist.photos
  end

  def update
    if @artist.update(artist_params)
      image_params.each do |image|
        @artist.photos.create(image: image)
      end

      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path, notice: "Artist deleted."
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end
    def image_params
      params[:images].present? ? params.require(:images) : []
    end
    def artist_params
      params.require(:artist).permit(:name, :describtion, :country)
    end
end
