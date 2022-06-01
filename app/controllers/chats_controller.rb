class ChatsController < ApplicationController

  def index
    @chats = current_user.chats.includes(:first_user, :second_user)
    @chat = @chats.find_by(id: params[:id]) || @chats.first
    @messages = @chat.messages
  end
end