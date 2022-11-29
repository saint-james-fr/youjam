class ChangeCreationsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :creations, :creation_url, :string
  end
end
