class AddAttachmentImgToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :shops, :img
  end
end
