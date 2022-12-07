class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :reviewer, null: false, foreign_key: {to_table: :users}
      t.references :reviewee, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
