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
  end

  def show
    @confirmed_bookings = Booking.accepted.where('jam_id = ?', @jam)
    @pending_bookings = Booking.pending.where('jam_id = ?', @jam)
    @declined_bookings = Booking.declined.where('jam_id = ?', @jam)
    @booking = Booking.new
  end

  private

  def set_jam
    @jam = Jam.find(params[:id])
  end
end
