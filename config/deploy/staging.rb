set :user,          'ubuntu'

set :rails_env,     'staging'
set :domain,        'ec2-54-235-43-42.compute-1.amazonaws.com'

server "ec2-54-235-43-42.compute-1.amazonaws.com", :app, :web, :db, :primary => true
ssh_options[:forward_agent] = true
ssh_options[:keys] = ["#{ENV['HOME']}/.ssh/IDB0yAwrds2013.pem"]

set :deploy_to,     '/ebs/boyawards/staging'

set :rvm_path,      '/ebs/.rvm'
set :rvm_bin_path,  "#{rvm_path}/bin"