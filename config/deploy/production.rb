set :user,          'ubuntu'

set :rails_env,     'production'
set :domain,        'boyawards.interiordesign.net'

server "ec2-54-235-43-42.compute-1.amazonaws.com", :app, :web, :db, :primary => true
ssh_options[:forward_agent] = true
ssh_options[:keys] = ["#{ENV['HOME']}/.ssh/IDB0yAwrds2013.pem"]

set :deploy_to,     '/ebs/boyawards/production'

set :rvm_path,      '/ebs/.rvm'
set :rvm_bin_path,  "#{rvm_path}/bin"


# set :delayed_job_args, "-n 2" # Yes, three workers!
# 
# 
# namespace :delayed_job do
#   monit_jobs = (0..2).map{|i| "delayed_job.#{i}"}.join(' ')
# 
#   task :stop, :roles => :app do
#     sudo "monit stop #{monit_jobs}"
#   end
# 
#   task :start, :roles => :app do
#     sudo "monit start #{monit_jobs}"
#   end
# end
# 
# before  "delayed_job:stop",     "delayed_job:monit_stop"
# before  "delayed_job:restart",  "delayed_job:monit_stop"
# after   "delayed_job:start",    "delayed_job:monit_start"
# after   "delayed_job:restart",  "delayed_job:monit_start"