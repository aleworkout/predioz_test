class RemoveFieldNameFromShop < ActiveRecord::Migration
  def change
    remove_column :shops, :user_email, :string
  end
end
