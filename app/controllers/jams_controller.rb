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
      sql_query = 'title ILIKE :query OR description ILIKE :query OR :instrument = ANY (instruments_list)'
      @jams = Jam.where(sql_query, query: "%#{params[:query]}%", instrument:"#{params[:query]}" )
    else
      @jams = Jam.all
    end
    
  end

  def show
  end
end
