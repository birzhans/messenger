module ChatsHelper
  def chat_preview_class(current_chat, chat)
    (current_chat == chat) ? 'text-primary' : 'text-dark'
  end

  def message_class(message, current_user)
    "rounded p-2 col #{(message.user == current_user) ? 'my-message' : 'other-message'}"
  end
end