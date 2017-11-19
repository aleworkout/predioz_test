class ImageUploader < CarrierWave::Uploader::Base
  require "mini_magick"
  
  storage :fog
  
  version :thumb do
    process resize_to_fill: [280, 280]
  end


end
