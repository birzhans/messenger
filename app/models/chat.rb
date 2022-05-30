class Chat < ApplicationRecord
  belongs_to :first_user, foreign_key: :first_user_id, class_name: 'User'
  belongs_to :second_user, foreign_key: :second_user_id, class_name: 'User'

  has_many :messages, dependent: :destroy

  validates :first_user_id, uniqueness: { scope: :second_user_id }

  def with(current_user)
    (first_user == current_user) ? second_user : first_user
  end
end
