class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :creations, :name, :string
  end
end
