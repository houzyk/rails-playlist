class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def new
    @platlist = Playlist.new
  end
end
