class RemoveFieldNameFromShop < ActiveRecord::Migration
  def change
    remove_column :shops, :user_id, :integer
  end
end
