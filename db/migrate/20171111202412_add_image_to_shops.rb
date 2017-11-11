class AddImageToShops < ActiveRecord::Migration
  def change
    add_column :shops, :image_id, :string
  end
end
