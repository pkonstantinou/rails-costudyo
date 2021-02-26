class AddCoordinatesToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :spaces, :latitude, :float
    add_column :spaces, :longitude, :float
  end
end
