class AddInfosToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string
    add_column :users, :location, :string
    add_column :users, :soundcloud_url, :string
    add_column :users, :instagram_url, :string
    add_column :users, :description, :string
  end
end
