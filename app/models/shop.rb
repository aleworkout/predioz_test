class Shop < ActiveRecord::Base
    has_many :products
    belongs_to :user 
    has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
end
