class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jams = Jam.all.first(4).reverse
    @users = User.all
  end

  def dashboard
    @all_my_jams = current_user.jams + current_user.booked_jams
    @all_my_jams = @all_my_jams.sort_by{|jam| jam.jam_date}
  end

  def profile
    @user = User.find(params[:id])
    @user.creations.map do |creation|
      match = creation.creation_url.match(/\w+\Z/)
      creation_url = "https://www.youtube.com/embed/#{match}"
      creation.update(creation_url: creation_url)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
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
