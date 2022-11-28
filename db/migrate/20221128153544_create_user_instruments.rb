class CreateUserInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_instruments do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
