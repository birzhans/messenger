class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @chat = Chat.find(params[:chat_id])
    @message = @chat.messages.build(message_params)
    @message.user = current_user
    if @message.save
      redirect_to chats_path(id: @chat)
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end