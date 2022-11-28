class AddMoreDefaultsValues < ActiveRecord::Migration[7.0]
  def change
    change_column :jams, :cancelled, :boolean, default: false
    change_column :bookings, :status, :string, default: "pending"
    change_column :bookings, :been_invited, :boolean
    change_column :users, :description, :text
    change_column :jams, :description, :text
    remove_column :jams, :photo
    remove_column :creations, :file
  end
end
