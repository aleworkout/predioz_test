class Product < ActiveRecord::Base
    belongs_to :shop
    attachment :image
    
    
    validates :name, :shop_id, presence: true, length: { maximum: 30 }
    
    
    
    def validate
        true
    end
end
