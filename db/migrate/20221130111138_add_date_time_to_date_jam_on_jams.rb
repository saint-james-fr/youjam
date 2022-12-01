class AddDateTimeToDateJamOnJams < ActiveRecord::Migration[7.0]
  def change
    change_column :jams, :jam_date, :datetime, null: false
  end
end
