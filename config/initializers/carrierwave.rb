CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: "AWS"
  }
  config.fog_directory = "paprthin"
end
