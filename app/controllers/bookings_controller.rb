class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update accepted declined canceled]
  before_action :set_jam, only: %i[accepted declined canceled]

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @jam = Jam.find(params[:jam_id])
    @booking.jam = @jam
    @booking.user = current_user
    if @booking.save
      redirect_to jam_path(@jam)
      flash.alert = "Demande envoyée !"
    else
      flash.alert = "Vérifie que tu n'aies rien oublié"
      render "jams/show", status: :unprocessable_entity
    end
  end

  def canceled
    authorize @booking
    if @booking.update(status: "canceled")
      redirect_to jam_path(@jam), status: :see_other
      flash.alert = "Invitation annulée"
    end
  end

  def accepted
    authorize @booking
    if @booking.update(status: "accepted")
      redirect_to jam_path(@jam)
      flash.alert = "Invitation validée"
    end
  end

  def declined
    authorize @booking
    if @booking.update(status: "declined")
      redirect_to jam_path(@jam)
      flash.alert = "Invitation refusée"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_jam
    @jam = Jam.find(params[:jam_id])
  end

  def booking_params
    params.require(:booking).permit(:message, :status, :jam_id)
  end

end
