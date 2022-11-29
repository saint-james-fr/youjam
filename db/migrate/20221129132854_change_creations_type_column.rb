class ChangeCreationsTypeColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :creations, :type, :string
  end
end
