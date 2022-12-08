class MessagesController < ApplicationController
  before_action :set_chatroom, only: :create

  def create
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    if params[:message][:content] == ""
      return
    end
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: 'message', locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render 'chatrooms/show', status: :unprocessable_entity
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
