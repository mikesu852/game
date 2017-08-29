# config.validate_unique_filename = true
#   config.validate_filename_format = true
#   config.validate_remote_net_url_format = false # this is important

CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'tainangame'
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600

  config.gcloud_attributes = {
    expires: 600
  }

  config.gcloud_credentials = {
    gcloud_project: 'game-178317',
    gcloud_keyfile: '/game/config/gcloud/game-428b42d19cbf.json'
  }
end
