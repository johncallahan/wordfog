class AddPictureToFog < ActiveRecord::Migration[6.0]
  def change
    add_column :fogs, :picture, :text
  end
end
