class AddCoordinatesToJams < ActiveRecord::Migration[7.0]
  def change
    add_column :jams, :latitude, :float
    add_column :jams, :longitude, :float
  end
end
