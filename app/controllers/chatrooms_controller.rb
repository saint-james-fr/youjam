class ChatroomsController < ApplicationController
  before_action :set_chatrooms, only: [:index, :show, :new, :create]

  def index
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
    @users = User.all.reject { |user| user.id == current_user.id }.map { |user| ["#{user.first_name} #{user.last_name}", user.id] }
    authorize @chatroom
  end

  def create
    @chatroom = Chatroom.new(params_chatroom)
    authorize @chatroom
    if @chatroom.save
      Chatmember.create(chatroom_id: @chatroom.id, user_id: current_user.id)
      selected_users = params.dig(:chatroom, :users).drop(1).map { |user| user.to_i }
      selected_users.each do |selected_user|
        Chatmember.create(chatroom_id: @chatroom.id, user_id: User.find(selected_user).id)
      end
      redirect_to chatroom_path(@chatroom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def params_chatroom
    params.require(:chatroom).permit(:name)
  end

  def set_chatrooms
    @chatrooms = policy_scope(Chatroom).all
  end
end
