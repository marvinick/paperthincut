CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "AKIAJ2PO7UNRHWVMN6HA",
    aws_secret_access_key: "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"
    "
  }
  config.fog_directory = "paprthin"
end
