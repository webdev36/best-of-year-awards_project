# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['AUTHORIZE_LOGIN_ID']='62tUsQ4Jt5'
ENV['AUTHORIZE_TRANSACTION_KEY']='6rmY7QzcZF69z52J'

yaml_data = YAML.load_file("#{Rails.root}/config/application.yml")
APP_CONFIG = HashWithIndifferentAccess.new(yaml_data)
# Initialize the rails application
BestOfYearAwards::Application.initialize!
