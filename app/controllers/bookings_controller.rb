class BookingsController < ApplicationController


  def create
    @booking = Booking.new(booking_params)
    @jam = Jam.find(params[:jam_id])
    @booking.jam = @jam
    @booking.user = current_user
    if @booking.save
      redirect_to jam_path(@jam)
      flash.alert = "Booking asked."
    else
      flash.alert = "Please verify all inputs"
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
