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
    @review = Review.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

end
