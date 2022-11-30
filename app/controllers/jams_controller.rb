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
    @confirmed_guests = Booking.accepted.where('user_id = ?', @jam.user).count
    @pending_guests = Booking.pending.where('user_id = ?', @jam.user).count
    @booking = Booking.new
    @post = Post.new
    @posts = @jam.posts
  end

  private

  def set_jam
    @jam = Jam.find(params[:id])
  end
end
