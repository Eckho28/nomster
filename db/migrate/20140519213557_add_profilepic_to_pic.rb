class AddProfilepicToPic < ActiveRecord::Migration
  def change
    add_column :pics, :profilepic, :string
  end
end
