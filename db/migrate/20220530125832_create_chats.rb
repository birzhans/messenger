class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.belongs_to :first_user, null: false, foreign_key: { to_table: :users }, index: true
      t.belongs_to :second_user, null: false, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end

    add_index :chats, [:first_user_id, :second_user_id], unique: true
  end
end
