class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jams = Jam.all.first(4).reverse
    @users = User.all
    @reviews = Review.all
    @users.each do |user|
      set_average(user)
    end
    @creations = Creation.all
    render "pages/home/home"
  end

  def dashboard
    @all_my_jams = current_user.jams + current_user.booked_jams
    @all_my_jams = @all_my_jams.sort_by{|jam| jam.jam_date}
  end

  def profile
    @user = User.find(params[:id])
    unless @user.reviews_as_reviewee.empty?
      set_average(@user)
    end
    @review = Review.new
    @reviews = Review.where(reviewee_id: @user)


    @user_artists = UserArtist.where(user_id: @user.id)
    @all_artists = @user.artists
  end

  def update_artist_list
    unless params[:artists].nil?
      params[:artists].each do |artist_id|
        UserArtist.find_by(artist: Artist.find(artist_id.to_i), user: current_user).update(toplist: true)
      end
      redirect_to profile_path(current_user)
    else
      flash.alert = "Veuillez remplir le formulaire."
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

  def set_average(user)
    @average = user.reviews_as_reviewee.average(:rating)
  end

end
