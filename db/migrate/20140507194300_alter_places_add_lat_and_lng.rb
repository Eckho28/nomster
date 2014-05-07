class AlterPlacesAddLatAndLng < ActiveRecord::Migration
  def change
  	add_column :places, :lattitude, :float
  	add_column :places, :longitude, :float
  end
end
