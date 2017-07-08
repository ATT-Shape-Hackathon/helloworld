Aws.config.update({
  credentials: Aws::Credentials.new(ENV['ACCESS_KEY'], ENV['SECRET_ACCESS_KEY']),
  region: ENV['AWS_REGION']
})
