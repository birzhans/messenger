module ChatsHelper
  def chat_preview_class(current_chat, chat)
    (current_chat == chat) ? 'text-primary' : 'text-dark'
  end
end