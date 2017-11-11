class Shop < ActiveRecord::Base
    has_many :products
    belongs_to :user 
    attachment :image
    
    def validate
        true
    end
end
