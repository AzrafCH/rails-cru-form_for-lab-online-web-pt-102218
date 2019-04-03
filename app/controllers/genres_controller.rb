class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:bio))
    redirect_to artist_path(@artist)
  end

    private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
