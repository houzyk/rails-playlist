class PlaylistsController < ApplicationController
  before_action :set_playlist, only: %i[edit update]

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @playlist.update(playlist_params)
    redirect_to root_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :genre, :description, :photo)
  end

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end
end
