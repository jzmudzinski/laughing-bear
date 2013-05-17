# http://torquebox.org/builds/html-docs/capistrano-support.html
require 'torquebox-capistrano-support'
require 'bundler/capistrano'

# SCM
set :application,       "rails_service_template"
set :repository,        "git@github.com:jzmudzinski/laughing-bear.git"
set :branch,            "master"
set :user,              "release"
set :scm,               :git
set :scm_verbose,       true
set :use_sudo,          false

# Production server
set :deploy_to,         "/data/#{application}"
set :torquebox_home,    "/opt/torquebox/current"
set :jboss_init_script, "/etc/init.d/jboss-as-standalone"
set :rails_env,         "production"
set :app_context,       "/"

ssh_options[:forward_agent] = false

role :web, "web-server"
role :app, "app-server"
role :db,  "app-server", primary: true
