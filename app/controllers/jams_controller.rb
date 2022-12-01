class JamsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_jam, only: %i[show update destroy]

  def new
    @jam = Jam.new
    @instruments = Instrument.all.pluck(:name)
  end

  def create
    @jam = Jam.new(params_jam)
    @jam.user = current_user
    @jam.instruments_list = params[:jam][:instruments_list]
    @jam.instruments_list.shift
    if @jam.save
      redirect_to jam_path(@jam)
    else
      @instruments = Instrument.all.pluck(:name)
      render :new, status: :unprocessable_entity
    end
  end

  def update
    raise
  end

  def index
    if params[:query].present?
      sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
      @jams = Jam.where(sql_query, query: "%#{params[:query]}%", instrument:"#{params[:query]}" )
    else
      @jams = Jam.all
    end
    @markers = @jams.geocoded.map do |jam|
      {
        lat: jam.latitude,
        lng: jam.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { jam: jam }),
        image_url: helpers.asset_url("jitar" )
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

  private

  def params_jam
    params.require(:jam).permit(:location, :description, :capacity, :instruments_list, :jam_date, :title, :photo)
  end
end
