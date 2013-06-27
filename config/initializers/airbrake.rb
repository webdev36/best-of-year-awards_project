airbrake_settings = YAML::load(File.open("#{Rails.root.to_s}/config/airbrake.yml")) rescue nil

unless ['test'].include?(Rails.env) || airbrake_settings.blank? || airbrake_settings[Rails.env].blank?
  Airbrake.configure do |config|
    config.api_key = airbrake_settings[Rails.env]['api_key']
    config.ignore_only = []
  end
end