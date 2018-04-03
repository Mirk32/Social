CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
      provider:                         'Google',
      google_storage_access_key_id:     'GOOG4WGYG25PWHTJHR3V',
      google_storage_secret_access_key: 'VVoZM6eEJk7sLoKlEg0/odWsKT6IDsvhJ7sUjAZo'
  }
  config.fog_directory = 'pretty_house'
end