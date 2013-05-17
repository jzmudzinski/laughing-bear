#!/bin/bash
# This command will automatically create Rails::API application running in TorqueBox template

rvm install jruby-1.7.4
rvm use jruby-1.7.4@global
gem install torquebox-server --version=2.3.1 -s http://torquebox.org/rubygems
gem install torquebox-backstage

mkdir -p $1
cd $1
rvm --rvmrc --create jruby-1.7.3@$1
gem install rails-api --no-ri --no-rdoc

rails-api new . --skip-action-mailer --skip-sprockets --skip-javascript --skip-test-unit --skip-active-record
rm -rf public
rm -rf db
rm -rf doc

torquebox rails
sed -i '.original' 's/2.3.0/2.3.1/' Gemfile
rm Gemfile.original
bundle install

sdoc -o public/doc .
