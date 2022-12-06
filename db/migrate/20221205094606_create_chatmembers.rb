class CreateChatmembers < ActiveRecord::Migration[7.0]
  def change
    create_table :chatmembers do |t|
      t.references :chatroom, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
