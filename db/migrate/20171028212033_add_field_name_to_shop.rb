class AddFieldNameToShop < ActiveRecord::Migration
  def change
    add_column :shops, :user_email, :string
  end
end
