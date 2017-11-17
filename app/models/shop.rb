class Shop < ActiveRecord::Base
    require 'carrierwave/orm/activerecord'
    has_many :products
    belongs_to :user 
    mount_uploader :image, ImageUploader
    
    def validate
        true
    end
end
