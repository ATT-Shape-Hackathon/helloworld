CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_REGION']
  }
  config.fog_directory = ENV['AWS_S3_BUCKET']

  config.will_include_content_type = true
  config.default_content_type = 'video/mpeg'
  config.allowed_content_types = %w(video/mpeg video/mp4 video/ogg)
end
