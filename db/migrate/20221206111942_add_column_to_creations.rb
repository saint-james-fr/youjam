class AddColumnToCreations < ActiveRecord::Migration[7.0]
  def change
    add_column :creations, :message, :string
  end
end
