class JamsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_jam, only: %i[show edit update destroy]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @jams = Jam.all
    @markers = @jams.geocoded.map do |jam|
      {
        lat: jam.latitude,
        lng: jam.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { jam: jam }),
        image_url: helpers.asset_url('jar-solid')
      }
    end
  end

  def show
    @confirmed_guests = Booking.accepted.where('user_id = ?', @jam.user).count
    @pending_guests = Booking.pending.where('user_id = ?', @jam.user).count
    @booking = Booking.new
  end

  private

  def set_jam
    @jam = Jam.find(params[:id])
  end
end
