class Product < ActiveRecord::Base
    belongs_to :shop
    has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
    validates_with AttachmentSizeValidator, attributes: :img, less_than: 250.kilobytes
    
    validates :name, :shop_id, presence: true, length: { maximum: 30 }
    
    def validate
        true
    end
end
