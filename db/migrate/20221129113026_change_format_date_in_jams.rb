class ChangeFormatDateInJams < ActiveRecord::Migration[7.0]
  def change
    remove_column :jams, :date, :time
    add_column :jams, :jam_date, :date
  end
end
