class CreateCreations < ActiveRecord::Migration[7.0]
  def change
    create_table :creations do |t|
      t.string :name
      t.string :type
      t.string :file
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
