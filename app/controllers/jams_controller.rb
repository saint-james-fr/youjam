class JamsController < ApplicationController
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
  end
end
