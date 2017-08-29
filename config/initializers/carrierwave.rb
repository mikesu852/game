# config.validate_unique_filename = true
#   config.validate_filename_format = true
#   config.validate_remote_net_url_format = false # this is important

CarrierWave.configure do |config|
config.fog_credentials = {

    :provider                         => 'Google',
    :google_storage_access_key_id     => Rails.application.secrets.google_storage_access_key_id,
    :google_storage_secret_access_key => Rails.application.secrets.google_storage_secret_access_key

    }

    config.fog_directory = 'tainangame'
end
