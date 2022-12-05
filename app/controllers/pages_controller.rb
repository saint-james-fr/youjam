class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jams = Jam.all.first(4).reverse
    @users = User.all
  end

  def dashboard
    @my_bookings_jam = []
    @my_jams = current_user.jams
    current_user.bookings.each do |booking|
      jam = booking.jam
      @my_bookings_jam << jam
    end
    @all_my_jams = @my_jams.concat(@my_bookings_jam)
    @all_my_jams = @all_my_jams.sort_by{|jam| jam.jam_date}
  end

  def profile
    @user = User.find(params[:id])
  end

end
