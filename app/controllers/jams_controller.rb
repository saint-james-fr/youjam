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
<<<<<<< HEAD
    @confirmed_guests = Booking.accepted.where('user_id = ?', @jam.user).count
    @pending_guests = Booking.pending.where('user_id = ?', @jam.user).count
=======
    @booking = Booking.new
>>>>>>> 2b4c198359b880100fe202de9e8041f4f6bd5c9b
  end

  private

  def set_jam
    @jam = Jam.find(params[:id])
  end
end
