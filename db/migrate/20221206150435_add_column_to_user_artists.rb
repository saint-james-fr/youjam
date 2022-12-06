class AddColumnToUserArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :user_artists, :toplist, :boolean, default: false
  end
end
