class ChatroomsController < ApplicationController
  before_action :set_chatrooms, only: [:index, :show]

  def index
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  private

  def set_chatrooms
    @chatrooms = policy_scope(Chatroom).all
  end
end
