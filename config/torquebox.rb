TorqueBox.configure do

  environment do
    GEM_HOME "#{ENV['rvm_path']}/gems/jruby-1.7.3@rails_service_template"
    GEM_PATH "#{ENV['rvm_path']}/gems/jruby-1.7.3@rails_service_template:#{ENV['rvm_path']}/gems/jruby-1.7.3@global"
  end

end
