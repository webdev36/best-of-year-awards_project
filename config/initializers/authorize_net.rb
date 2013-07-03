authorize_net_settings = YAML::load(File.open("#{Rails.root.to_s}/config/gateway.yml")) rescue nil

ActiveMerchant::Billing::Base.mode = (['production'].include?(Rails.env) ? :production : :test)

::GATEWAY = ActiveMerchant::Billing::AuthorizeNetGateway.new(
  :login    => (authorize_net_settings[Rails.env]['login_id'] rescue ''),
  :password => (authorize_net_settings[Rails.env]['transaction_key'] rescue ''),
  :test     => (!['production'].include?(Rails.env))
)
