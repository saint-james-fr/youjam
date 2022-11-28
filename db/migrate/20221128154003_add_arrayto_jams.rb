class AddArraytoJams < ActiveRecord::Migration[7.0]
  def change
    remove_column :jams, :instruments
    add_column :jams, :instruments_list, :string, array: true, default: []
  end
end
