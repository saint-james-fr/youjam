class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update accepted declined canceled]
  before_action :set_jam, only: %i[accepted declined canceled]

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
    @booking.update(params_booking)
  end

  def canceled
    if @booking.update(status: "canceled")
      redirect_to jam_path(@jam), status: :see_other
      flash.alert = "Invitation annulée"
    end
  end

  def accepted
    if @booking.update(status: "accepted")
      redirect_to jam_path(@jam)
      flash.alert = "Invitation validée"
    end
  end

  def declined
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
