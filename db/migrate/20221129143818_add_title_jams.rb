class AddTitleJams < ActiveRecord::Migration[7.0]
  def change
    add_column :jams, :title, :string
  end
end
