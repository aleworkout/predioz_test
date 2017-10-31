class Product < ActiveRecord::Base
    belongs_to :shop
    has_attached_file :img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
end
