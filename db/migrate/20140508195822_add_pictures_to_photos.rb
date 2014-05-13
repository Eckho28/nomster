class AddPicturesToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photos, :string
  end
end
