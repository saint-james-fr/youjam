class JamsController < ApplicationController
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

  def edit
  end

  def update
  end

  def index
    if params[:query].present?
      sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
      @jams = Jam.where(sql_query, query: "%#{params[:query]}%", instrument:"#{params[:query]}" )
    else
      @jams = Jam.all
    end
    
  end

  def show
  end

  private

  def params_jam
    params.require(:jam).permit(:location, :description, :capacity, :instruments_list, :jam_date, :title, :photo)
  end
end
