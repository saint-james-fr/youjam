class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jams = Jam.all.first(4).reverse
    @users = User.all
    @creations = Creation.all
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
    @user_artists = UserArtist.where(user_id: @user.id)
    @all_artists = @user.artists#.map {|artist| [artist.name, artist.id]}
  end

  def update_artist_list
    params[:artists].each do |artist_id|
      UserArtist.find_by(artist: Artist.find(artist_id.to_i), user: current_user).update(toplist: true)
    end
    redirect_to profile_path(current_user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

end
