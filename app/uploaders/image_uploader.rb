class ImageUploader < CarrierWave::Uploader::Base

  storage :fog
  
  version :image do
    process resize_to_fill: [280, 280]
  end


end
