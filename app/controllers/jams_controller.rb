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
    if params[:query].present?
      @jams = Jam.where('title ILIKE ?', "%#{params[:query]}%")
    else
      @jams = Jam.all
    end
  end

  def show
  end
end
