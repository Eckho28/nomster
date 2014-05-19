class AddProfilepictureToPlace < ActiveRecord::Migration
  def change
    add_column :places, :profilepicture, :string
  end
end
