class CreateJams < ActiveRecord::Migration[7.0]
  def change
    create_table :jams do |t|
      t.string :location
      t.string :photo
      t.string :description
      t.string :instruments
      t.integer :capacity
      t.time :date
      t.boolean :cancelled
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
