class JamsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_jam, only: %i[show update destroy]

  def new
    @jam = Jam.new
    authorize @jam
    @instruments = Instrument.all.pluck(:name)
  end

  def create
    @jam = Jam.new(params_jam)
    authorize @jam
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
    authorize @jam
    @jam.instruments_list = params[:jam][:instruments_list]
    if @jam.update(params_jam)
      redirect_to jam_path(@jam)
    else
      @instruments = Instrument.all.pluck(:name)
      render :update, status: :unprocessable_entity
    end
  end

  def index
    @jams = policy_scope(Jam).all
    authorize @jams
    if params['search']['query'].present?
      sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
      @jams = @jams.where(sql_query, query: "%#{params['search']['query']}%", instrument:"#{params['search']['query']}" )
    end
    if params['search']['address'].present?
      @jams = @jams.near(params['search']['address'], 10)
    end
    @markers = @jams.geocoded.map do |jam|
      {
        lat: jam.latitude,
        lng: jam.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { jam: jam }),
        image_url: helpers.asset_url("jitar")
      }
    end
    @jams = @jams.sort_by(&:jam_date)
  end

  def show
    authorize @jam
    @accepted_bookings = Booking.accepted.where('jam_id = ?', @jam)
    @pending_bookings = Booking.pending.where('jam_id = ?', @jam)
    @declined_bookings = Booking.declined.where('jam_id = ?', @jam)
    @booking = Booking.new
    @post = Post.new
    @posts = @jam.posts
    @instruments = Instrument.all.pluck(:name)
  end

  private

  def set_jam
    @jam = Jam.find(params[:id])
  end

  def params_jam
    params.require(:jam).permit(:location, :description, :capacity, :instruments_list, :jam_date, :title, :photo)
  end
end

# if params['search']['query'].present? && params['search']['address'].present?
#   sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
#   @jams = Jam.where(sql_query, query: "%#{params['search']['query']}%", instrument:"#{params['search']['query']}" )
#   @jams = Jam.near(params['search']['address'], 10)
# elsif params['search']['query'].present? && params['search']['address'].empty?
#   sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
#   @jams = Jam.where(sql_query, query: "%#{params['search']['query']}%", instrument:"#{params['search']['query']}" )
# elsif params['search']['query'].empty? && params['search']['address'].present?
#   @jams = Jam.near(params['search']['address'], 10)
# else
#   @jams = Jam.all
# end
