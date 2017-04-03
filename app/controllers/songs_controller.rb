class SongsController < ApplicationController
  def index
    @songs = Song.all
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]

    if @song.save
      redirect_to @song.artist, notice: "Song successfully added"
    else
      render :new
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@song.artist)
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :year, :time, :album, :artist_id)
    end
end
