class SpotifyController < ApplicationController
  after_action :verify_authorized, except: [:artists]

  def artists
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
    redirect_to profile_path(current_user)
  end
end
