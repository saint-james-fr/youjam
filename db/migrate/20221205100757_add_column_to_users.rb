class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :spotify_account, :string
  end
end
