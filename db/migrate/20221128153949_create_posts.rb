class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :jam, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.string :file

      t.timestamps
    end
  end
end
