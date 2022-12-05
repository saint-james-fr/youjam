class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jams = Jam.all.first(4).reverse
    @users = User.all
  end

  def dashboard
  end

  def profile
    @user = User.find(params[:id])
  end

  def spotify
    @my_spotify = RSpotify::User.find(current_user.spotify_account)
    unless @my_spotify.nil?
      @my_spotify.playlists.each do |playlist|
        playlist.tracks.each do |track|
          track.artists.each do |artist|
            spotify_artist = Artist.find_or_create_by(name: artist.name, spotify_url: artist.uri)
            UserArtist.find_or_create_by(user: current_user, artist: spotify_artist)
          end
        end
      end
    end
  end
end
