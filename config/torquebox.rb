TorqueBox.configure do

  environment do
    GEM_HOME "#{ENV['rvm_path']}/gems/jruby-1.7.4@rails_service_template"
    GEM_PATH "#{ENV['rvm_path']}/gems/jruby-1.7.4@rails_service_template:#{ENV['rvm_path']}/gems/jruby-1.7.4@global"
  end

end
