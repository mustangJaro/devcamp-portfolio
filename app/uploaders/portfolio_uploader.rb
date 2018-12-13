class PortfolioUploader < CarrierWave::Uploader::Base
  storage :aws

  def asset_host
    return "https://s3.us-east-2.amazonaws.com/" + ENV.fetch('S3_BUCKET_NAME')
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
