class ImageUploader < CarrierWave::Uploader::Base
  
  storage :fog
  
  include CarrierWave::MiniMagick

  process :scale => [300, 300]

  def scale(width, height)
    process :resize_to_fit => [400, 400]
  end

  version :thumb do
    process :resize_to_fit => [50, 50]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


end
