class ArtistsController < ApplicationController

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:bio))
    redirect_to artist_path(@artist)
  end
end
