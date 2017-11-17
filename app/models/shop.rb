class Shop < ActiveRecord::Base
    has_many :products
    belongs_to :user 
    mount_uploader :image, ImageUploader
    
    def validate
        true
    end
end
