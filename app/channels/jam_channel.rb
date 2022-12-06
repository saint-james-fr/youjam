class JamChannel < ApplicationCable::Channel
  def subscribed
    jam = Jam.find(params[:id])
    stream_for jam
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
