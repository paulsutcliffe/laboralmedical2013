#coding: utf-8
require "bundler/capistrano"
require "rvm/capistrano"

set :rvm_ruby_string, '1.9.3'
set :rvm_type, :user  # Don't use system-wide RVM

server "laboralmedicalperu.com", :web, :app, :db, primary: true

set :application, "laboralmedical2013"
set :user, "paul"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:paulsutcliffe/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

namespace :bundler do
  desc "|DarkRecipes| Installs bundler gem to your server"
  task :setup, :roles => :app do
    run "if ! gem list | grep --silent -e 'bundler'; then #{try_sudo} gem uninstall bundler; #{try_sudo} gem install --no-rdoc --no-ri bundler; fi"
  end

  desc "|DarkRecipes| Runs bundle install on the app server (internal task)"
  task :install, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && bundle install --deployment --without=development test"
    if File.exist? "/#{current_path}/bin/unicorn"
      run "cd #{current_path} && bundle install -—binstubs"
    end
  end
end

namespace :deploy do

  namespace :assets do
    task :precompile, :roles => :web, :except => { :no_release => true } do
      from = source.next_revision(current_revision)
      if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
        run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
      else
        logger.info "Skipping asset pre-compilation because there were no asset changes"
      end
    end
  end

  desc "creates database & database user"

  task :create_database do
    set :root_password, Capistrano::CLI.password_prompt("MySQL root password: ")
    set :db_user, Capistrano::CLI.ui.ask("Application database user: ")
    set :db_pass, Capistrano::CLI.password_prompt("Password: ")
    set :db_name, Capistrano::CLI.ui.ask("Database name: ")

    run "mysql --user=root --password=#{root_password} -e \"CREATE DATABASE IF NOT EXISTS #{db_name}\""
    run "mysql --user=root --password=#{root_password} -e \"GRANT ALL PRIVILEGES ON #{db_name}.* TO '#{db_user}'@'localhost' IDENTIFIED BY '#{db_pass}' WITH GRANT OPTION\""
  end

  task :setup_config, roles: :app do
    if File.exist? "/etc/nginx/sites-enabled/default"
      sudo "rm /etc/nginx/sites-enabled/default"
    end
    sudo "ln -nfs #{current_path}/config/nginx.conf /etc/nginx/sites-enabled/#{application}"
    sudo "ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}"
  end
  before "deploy:cold", "deploy:create_database"
  after "deploy:cold", "deploy:setup_config"

  desc "Make sure local git is in sync with remote."
  task :check_revision, roles: :web do
    unless `git rev-parse HEAD` == `git rev-parse origin/master`
      puts "WARNING: HEAD is not the same as origin/master"
      puts "Run `git push` to sync changes."
      exit
    end
  end
  before "deploy", "deploy:check_revision"
  after "deploy", "deploy:restart_unicorn"

  task :restart_unicorn, roles: :app do
    sudo "service unicorn_#{application} restart"
  end
end
