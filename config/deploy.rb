require 'bundler/capistrano'
require 'capistrano/ext/multistage'
require 'yaml'
require 'cap_recipes/tasks/passenger'

load "deploy/assets"

# require "delayed/recipes"
# require 'airbrake/capistrano'

# ssh -i .ssh/IDB0yAwrds2013.pem ubuntu@ec2-54-235-43-42.compute-1.amazonaws.com

# RVM SETUP
# $:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
set :rvm_ruby_string, 'default'
set :rvm_type,        :user
set :rvm_path,        "/ebs/.rvm"
set :rvm_bin_path,    "#{rvm_path}/bin"
set :use_sudo,        false

# Application
set :application, 'IDBoYAwards'
set :stages, %w(staging production)
set :default_stage, "staging"

# Server
set :user, "ubuntu"
set :keep_releases, 5

# SCM
set :scm, :git
set :scm_verbose, true
set :scm_passphrase, ''
set :branch, ENV['BRANCH'] || 'master'
set :repository,  "git@github.com:XOlator/best-of-year-awards.git"

# Options
default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }
set :deploy_via, :remote_cache
set :git_enable_submodules, 1
# set :git_shallow_clone, 1


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :symlink_addendums do
    # run <<-eos
    #   ln -nfs #{shared_path}/config/asset_sync.yml #{release_path}/config/asset_sync.yml
    #   && ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml
    #   && ln -nfs #{shared_path}/config/airbrake.yml #{release_path}/config/airbrake.yml
    #   && ln -nfs #{shared_path}/config/application.yml #{release_path}/config/application.yml
    #   && ln -nfs #{shared_path}/log #{release_path}/log
    # eos
    run <<-eos
      ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml
      && ln -nfs #{shared_path}/config/airbrake.yml #{release_path}/config/airbrake.yml
      && ln -nfs #{shared_path}/config/gateway.yml #{release_path}/config/gateway.yml
      && ln -nfs #{shared_path}/config/application.yml #{release_path}/config/application.yml
      && ln -nfs #{shared_path}/log #{release_path}/log
    eos
  end

  # namespace :assets do
  #   task :precompile, :roles => :web, :except => { :no_release => true } do
  #     # begin
  #     #   from = source.next_revision(current_revision) # <-- Fail here at first-time deploy because of current/REVISION absence
  #     # rescue
  #     #   logger.info "Likely missing current/REVISION"
  #     #   err_no = true
  #     # end
  #     # if err_no || capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
  #     #  run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
  #     # else
  #     #   logger.info "Skipping asset pre-compilation because there were no asset changes"
  #     # end
  #     from = source.next_revision(current_revision)
  #     if true || from.nil? || capture("cd #{latest_release} && #{source.local.log(from)} app/assets/ | wc -l").to_i > 0
  #       logger.info "OMG COMPILE"
  #       run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
  #     else
  #       logger.info "Skipping asset pre-compilation because there were no asset changes."
  #     end
  #   end
  # end
end


# namespace :bundler do
#   task :create_symlink, :roles => :app do
#     shared_dir = File.join(shared_path, 'bundle')
#     release_dir = File.join(current_release, '.bundle')
#     run("mkdir -p #{shared_dir} && ln -s #{shared_dir} #{release_dir}")
#   end
#   
#   task :bundle_new_release, :roles => :app do
#     bundler.create_symlink
#     run "cd #{release_path} && bundle install --without test"
#   end
#   
#   task :lock, :roles => :app do
#     run "cd #{current_release} && bundle lock;"
#   end
#   
#   task :unlock, :roles => :app do
#     run "cd #{current_release} && bundle unlock;"
#   end
# end

# HOOKS
before "deploy:finalize_update" do
  deploy.symlink_addendums
end

# DELAYED_JOBS
# after "deploy:stop",    "delayed_job:stop"
# after "deploy:start",   "delayed_job:start"
# after "deploy:restart", "delayed_job:restart"

# THINKING_SPHINX
# namespace :sphinx do
#   desc "Symlink Sphinx indexes"
#   task :symlink_indexes, :roles => [:app] do
#     run <<-eos
#       ln -nfs #{shared_path}/db/sphinx #{release_path}/db/sphinx
#       && ln -nfs #{shared_path}/config/sphinx.yml #{release_path}/config/sphinx.yml
#     eos
#   end
# end
# before 'deploy:update_code', 'thinking_sphinx:stop'
# after 'deploy:update_code', 'thinking_sphinx:start'
# after 'deploy:finalize_update', 'sphinx:symlink_indexes'

# MAINTENANCE
# after "deploy:update", "deploy:cleanup"

require './config/boot'
require 'airbrake/capistrano'
