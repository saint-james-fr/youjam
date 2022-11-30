class BookingsController < ApplicationController


  def create
    @booking = Booking.new(booking_params)
    @jam = Jam.find(params[:jam_id])
    @booking.jam = @jam
    @booking.user = current_user
    if @booking.save
      redirect_to jam_path(@jam)
      flash.alert = "Jam demandée !"
    else
      flash.alert = "Vérfie que tu n'aies rien oublié"
      render "jams/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def cancel
  end
end

private

def booking_params
  params.require(:booking).permit(:message)
end
