class JamsController < ApplicationController
  def new
    @jam = Jam.new
    @instruments = Instrument.all.pluck(:name)
  end

  def create
    @jam = Jam.new(params_jam)
    @jam.user = current_user
    if @jam.save
      redirect_to jam_path(@jam)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def index
    @jams = Jam.all
  end

  def show
  end

  private

  def params_jam
    params.require(:jam).permit(:location, :description, :capacity, :instruments_list, :jam_date, :title)
  end
end
