class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  before_destroy :destroy_chats

  def chats
    Chat.where("first_user_id = ? OR second_user_id = ?", id, id)
  end

  private

  def destroy_chats
    chats.destroy_all
  end
end
